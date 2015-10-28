---
layout: "blog_article"
date: "2014-05-20 11:58:00 UTC"
published: true
title: "dev_toolbox.pack()"
author: "Tom Sabin"

---

[Chris C](http://www.unboxedconsulting.com/people/chris-carter) and I recently attended a workshop at jQuery 2014 to learn more about a [web developer's toolbox](http://presentboldly.com/appendtotraining/web-developers-toolbox-jquery-uk), lead by [Jordan Kasper](https://twitter.com/jakerella). Predominantly this workshop taught us [Grunt](http://gruntjs.com/) and the many plugins that exist. Grunt is a JavaScript task runner which allows us to automate numerous tasks that would otherwise be cumbersome to repeat, repeat *and* repeat during development or deployment.

In Ruby we have Rake, and therefore in JavaScript we have Grunt. But comparing the two is difficult as Grunt relies purely on plugins. Tasks are built up using [the numerous available plugins](http://gruntjs.com/plugins) to create the best workflow for you (and your team). Here is a very simple example that uses [grunt-contrib-watch](https://github.com/gruntjs/grunt-contrib-watch) and [LiveReload](http://livereload.com/) to refresh the browser when any `.html` files are changed:

	module.exports = function (grunt) {
	  grunt.loadNpmTasks("grunt-contrib-watch");

	  grunt.initConfig({
	    watch: {
	      html: {
	        files: "*.html",
	        options: {
	          livereload: true
	        }
	      }
	    }
	  });

	  grunt.registerTask( "default", [ "watch:html" ] );
	};

It's worth mentioning that any packages that start with `grunt-contrib` are officially maintained by the team behind Grunt. Their documentation is sound and they provide useful examples to get you started.

We also took a look over JSLint and JSHint; two tools to check JavaScript code quality. [JSHint](http://www.jshint.com/about/) was the preferred one in our workshop because it meant we could be more flexible with our rules. These tools exist to prevent one of the biggest bugbears with JavaScript: forgetting one semi-colon in your code might consequently break all the things.

Now here's a question for you; do you think JavaScript code is ugly or beautiful? If you think the latter, then lets make it ugly with [UglifyJS](https://github.com/mishoo/UglifyJS). If you thought the former, then we'll make it even uglier, also with [UglifyJS](https://github.com/mishoo/UglifyJS). There is a reason to be using this tool however as it concatenates, minifies and consequently reduces the file size of your JavaScripts, so that it can be sent over the interwebs quicker. Automate it with [`grunt-contrib-uglify`](https://github.com/gruntjs/grunt-contrib-uglify).

[Bower](http://bower.io/) was another tool introduced to us. It's a package manager, installed by a package manager, to manage other packages. The only requirement is just a `bower.json` file to specify what packages you want installed. It's a great way to manage your dependencies such as Underscore, jQuery, D3, etc. in your project.

The final thing on the workshop agenda was [QUnit](http://qunitjs.com/), jQuery's take on JavaScript unit testing. The framework uses PhantomJS, a headless browser, so it's pretty nippy. Automate it with [`grunt-contrib-qunit`](https://github.com/gruntjs/grunt-contrib-qunit).

At the conference, the day after this workshop, I attended a talk by [Andi Smith](http://twitter.com/andismith). It was titled '[Searching for the Perfect Workflow](http://www.andismith.com/blog/2014/05/the-perfect-workflow/)'. It's almost impossible to have a one-size-fits-all workflow for every project, every team member. Instead, Andi Smith provided numerous useful tips and tricks about how to improve your workflow:

* [grunt-uncss](https://github.com/addyosmani/grunt-uncss): remove any unused CSS from your stylesheets.
* [grunt-concurrent](https://github.com/sindresorhus/grunt-concurrent): speed up your build time by running tasks concurrently. Obviously you'd want to do this on tasks that do not depend on each other.
* [grunt-autoprefixer](https://github.com/nDmitry/grunt-autoprefixer): uses the [Can I Use](http://caniuse.com/) database to prefix vendor specific properties to CSS.
* [load-grunt-tasks](https://github.com/sindresorhus/load-grunt-tasks): if you have many Grunt plugins, the Gruntfile soon becomes polluted with declaring each plugin, one by one, at the top of the file. By using this module you can remove this cumbersome task and depend purely on your project's `package.json` file.*
* [shrinkwrap](https://www.npmjs.org/doc/cli/npm-shrinkwrap.html): lock down dependency versions.
