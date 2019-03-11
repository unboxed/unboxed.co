# https://unboxed.co

This repo used to be called ubxd_web_refresh but now it's called unboxed.co as
that's where it is deployed to.

We deploy the app using netlify.  Anything merged into the default branch
(production) is deployed to unboxed.co by netlify, but we get previews of any
other branch for testing purposes.

## Development setup

This is a static site which uses [middleman](https://github.com/middleman/middleman)

To get things running on your machine:

* ### Clone the repository

  ```
  git clone git@github.com:unboxed/unboxed.co.git
  ```

* ### Install Dependencies

  ```
  cd unboxed.co
  bundle install
  ```

* ### Start the server

  ```
  middleman server
  ```

Active reloading is configured, so the server will listen for changes and refresh the page in your browser.

* ### Making a blog post

  Use `middleman article "[article name]" --blog blog` to create a new blog file.

* ### Making a news post

  Use `middleman article "[article name]" --blog news` to create a new blog file.

## Testing

Using [BrowserStack](https://www.browserstack.com) for compatibility testing

## Adding to the 'team' page

Upload caricatures at a size at or near to (212px * 425px), with a transparent background. This can be done with e.g. the Mac Preview app.

## Removing an employee from the site

Use `ruby 'lib/remove_person.rb'` to start a script to remove an employee from the team page and their links across the site.

## Blog CSS Features

Adding a line with emphasis directly under an image will style it as a caption:

```
![](image_url)
*Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.*
```

## Image Guidelines

All images, excluding external links, should have a retina version and a
non-retina version stored in the same repository, with the suffix @2x
appended onto the filename (E.g macbook.jpg and macbook@2x.jpg). The
retina version should be twice the size of the non-retina version. See
[style guide](https://unboxed.co/style-guide) for image resolutions.

Whenever possible, you should use Photoshop or GIMP to resize images.
Alternatively, Apple Preview can be used with decent results
(go to `Tools > Adjust size` and select desired size in pixels).

Images should also be compressed for web.
[ImageOptim](https://imageoptim.com/mac) can be used for this - using
85% compression for JPGs and 90% for PNGs. You can also check the page
on Google PageSpeed service to see if it has been compressed enough.
