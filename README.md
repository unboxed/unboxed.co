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

Using [BrowserStack](https://www.browserstack.com) for compability testing

## Blog CSS Features

Adding a line with emphasis directly under an image will style it as a caption:

```
![](image_url)
*Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.*
```
