---
layout: "blog_article"
date: "2015-09-18 16:15:00 UTC"
published: true
title: "Replacing the Asset pipeline with Gulp"
author: "Anson Kelly"
tags:
  - Rails
---

When Rails 3.1 was released back in 2011 it brought a big change to the way Rails apps handled and served assets `%w(css javascript images fonts)` - the asset pipeline.

Gone were the days of manually converting coffeescript to javascript before commiting it to the /public folder. Gone were the days of manually changing filenames like `banner_v1.jpg`,`banner_v2.jpg` to force caches to serve the new version.

You could even run the asset pipeline without Rails:  [https://github.com/jgraichen/sprockets-standalone](https://github.com/jgraichen/sprockets-standalone).

The asset pipeline would do all that for you. And all was well... for awhile...

Front-end development has grown more and more complex over the last few years. No longer are websites rendered on the server with a touch of css and jQuery, now days many sites are rendered totally in the browser with hundreds upon hundreds of css and javascript files to make it all work. To enable extra features and to manage the complexity many open source libraries have been released. Trouble is most of them are nodeJS based due to developers who spend most of their time in browser-land using grunt, gulp, broccoli, brunch, codekit and others.

This means that Rails apps miss out on using alot of these new ways of managing front end assets like sourcemaps, browser feature prefixes and autoreloading.
Is there a way of keeping our Rails backend but being able to tap into this rich front-end ecosystem? Sure there is.

We could port / wrap / tweak these libraries to work with Rails. (Lots of work)

Or we can switch from using the asset pipeline to using one of the newer alternatives. (Much less work)

Here we will look at building a replacement for the asset pipeline using [gulp](http://gulpjs.com/)

> _"gulp is a toolkit that will help you automate painful or time-consuming tasks in your development workflow"_
- gulpjs.com

gulp is a good choice as you can get a lot done in just a few lines of code, it is performant and has a large library of plugins.

> _"By harnessing the power of node's streams you get fast builds that don't write intermediary files to disk"_
- gulpjs.com


First things first - turn off the asset pipeline!

Add this line into your Rails app:

    # config/application.rb
    module YourAppName
      class Application < Rails::Application

        # ... other config ...

        config.assets.enabled = false
        config.generators do |g|
          g.assets false
        end
      end
    end

Remove any asset related gems from your Gemfile. Some examples would be:

* rails-jquery
* rails-sass
* rails-less
* uglifier
* therubyracer

We need to install node, gulp and dependencies. Follow [https://github.com/gulpjs/gulp/blob/master/docs/getting-started.md](https://github.com/gulpjs/gulp/blob/master/docs/getting-started.md)

Lets make a list of the tasks we want gulp to do:

1.  Clean out the public/assets directory
2.  Copy and image and font files into the public/assets directory
3.  Compile our stylesheets into public/assets
4.  Compile our javascript into public/assets
5.  Update Rails' asset helper methods to use our new pipeline

In a future post we will extend our gulp pipeline to do

6.  Autoreloading working (no more CTRL-R in development)
7.  Fingerprint assets for production

We will put everything into our Gulpfile.js to keep it simple.

First a task to clean out our `public/assets` directory:

    // Gulpfile.js

    var gulp  = require('gulp'),
    del       = require('del');

    gulp.task('clean', function (cb) {
      del(["./public/assets"], cb);
    });


Running `gulp clean` will remove anything in the `public/assets` directory. Nice.

Next is copying across images:

    // Gulpfile.js

    var gulp   = require('gulp'),
    del        = require('del'),
    changed    = require('gulp-changed'),
    imagemin   = require('gulp-imagemin');

    // ... other tasks ...

    gulp.task('images', ['clean'], function() {
      var srcPath  = "./app/assets/images/**",
          destPath = "./public/assets/images";

      return gulp.src(srcPath)
        .pipe(changed(destPath)) // Ignore unchanged files
        .pipe(imagemin()) // Optimize images
        .pipe(gulp.dest(destPath)); // Write images to public dir
    });

Note: Passing in `clean` as the second parameter will make gulp run `clean` before `images`.

This is a good example of how gulp tasks work - do one thing then pass it to the next handler. Want to do something else? Just add a new .pipe().

Stylesheets are up next. Very easy to do things like sourcemaps and css-prefixing. Here we are using SASS but LESS is similar:


    // Gulpfile.js

    var gulp     = require('gulp'),
    del          = require('del'),
    changed      = require('gulp-changed'),
    imagemin     = require('gulp-imagemin'),
    less         = require('gulp-sass'),
    sourcemaps   = require('gulp-sourcemaps'),
    autoprefixer = require('gulp-autoprefixer'),
    concat       = require('gulp-concat');

    // ... other tasks ...

    gulp.task('sass', ['clean'], function () {
      var srcPath  = "./app/assets/stylesheets/**/*.scss",
          destPath = "./public/assets";

      gulp.src(srcPath, { base: 'app/assets' })
        .pipe(sourcemaps.init({loadMaps: true})) // Tell gulp we want sourcemaps too
        .pipe(sass().on('error', sass.logError))
        .pipe(concat('application.css'))
        .pipe(sourcemaps.write())
        .pipe(autoprefixer({ browsers: ['last 2 version'] })) // Use browser specific prefixes
        .pipe(gulp.dest(destPath));
    });


And finally the javascript:

    // Gulpfile.js

    var gulp     = require('gulp'),
    del          = require('del'),
    changed      = require('gulp-changed'),
    imagemin     = require('gulp-imagemin'),
    less         = require('gulp-less'),
    sourcemaps   = require('gulp-sourcemaps'),
    autoprefixer = require('gulp-autoprefixer'),
    concat       = require('gulp-concat'),
    uglify       = require('gulp-uglify');

    //... other tasks ...

    gulp.task('js', ['clean'], function () {
      var srcPath  = "./app/assets/javascripts/**/*.js",
          destPath = "./public/assets";

      return gulp.src(srcPath)
        .pipe(sourcemaps.init())
        .pipe(uglify())
        .pipe(concat('application.js')) // Merge into 1 file
        .pipe(sourcemaps.write())
        .pipe(gulp.dest(destPath));
    });

When we change any asset file we want gulp to rebuild the assets:

    gulp.task('watch', function() {
      gulp.watch("./app/assets/stylesheets/**/*", ['sass']);
      gulp.watch("./app/assets/javascripts/**/*", ['js']);
      gulp.watch("./app/assets/images/*", ['images']);
    });

The syntax here is pretty clear - whenever a file changes that matches the glob run the task. Easy.

Lets combine all the above tasks so they are all run with one command:

    // Gulpfile.js

    //... other tasks ...

    gulp.task('default', ['watch', 'images', 'sass', 'js']);

So now all we do is run `gulp` in the terminal. It will compile and copy all our assets, and re-compile and re-copy whenever a file changes.

The last thing to so is make Rails' asset helpers work with our new pipeline. Tweaking a few view helpers will do the trick:

    #/app/helpers/application_helper.rb
    module ApplicationHelper
      def path_to_javascript(source, path_options)
        gulp_asset_path source
      end

      def path_to_stylesheet(source, path_options)
        gulp_asset_path source
      end

      def path_to_image(source, path_options)
        gulp_asset_path "images/#{source}"
      end

      private

      def gulp_asset_path(path)
        "/assets/#{path}"
      end
    end


Using these helpers means that our views do not need to change at all.

So we now have a complete replacement for the asset pipeline in less than 60 lines of code that performs roughy the same.

Next up we will extend our new pipeline to do things the asset has trouble with, and prepare our assets for production.

For reference here is the entire Gulpfile:

    // Gulpfile.js
    var gulp     = require('gulp'),
    del          = require('del'),
    changed      = require('gulp-changed'),
    imagemin     = require('gulp-imagemin'),
    less         = require('gulp-less'),
    sourcemaps   = require('gulp-sourcemaps'),
    autoprefixer = require('gulp-autoprefixer'),
    concat       = require('gulp-concat'),
    uglify       = require('gulp-uglify');

    gulp.task('clean', function (cb) {
      del(["./public/assets"], cb);
    });

    gulp.task('images', ['clean'], function() {
      var srcPath  = "./app/assets/images/**",
          destPath = "./public/assets/images";

      return gulp.src(srcPath)
        .pipe(changed(destPath)) // Ignore unchanged files
        .pipe(imagemin()) // Optimize images
        .pipe(gulp.dest(destPath)); // Write images to public dir
    });

    gulp.task('sass', ['clean'], function () {
      var srcPath  = "./app/assets/stylesheets/**/*.scss",
          destPath = "./public/assets";

      gulp.src(srcPath, { base: 'app/assets' })
        .pipe(sourcemaps.init({loadMaps: true})) // Tell gulp we want sourcemaps too
        .pipe(sass().on('error', sass.logError))
        .pipe(concat('application.css'))
        .pipe(sourcemaps.write())
        .pipe(autoprefixer({ browsers: ['last 2 version'] })) // Use browser specific prefixes
        .pipe(gulp.dest(destPath));
    });

    gulp.task('js', ['clean'], function () {
      var srcPath  = "./app/assets/javascripts/**/*.js",
          destPath = "./public/assets";

      return gulp.src(srcPath)
        .pipe(sourcemaps.init())
        .pipe(uglify())
        .pipe(concat('application.js')) // Merge into 1 file
        .pipe(sourcemaps.write())
        .pipe(gulp.dest(destPath));
    });

    gulp.task('watch', function() {
      gulp.watch("./app/assets/stylesheets/**/*", ['sass']);
      gulp.watch("./app/assets/javascripts/**/*", ['js']);
      gulp.watch("./app/assets/images/*", ['images']);
    });

    gulp.task('default', ['watch', 'images', 'sass', 'js']);


