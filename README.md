# X-Forwarded-Proto SSL Middleware for Vapor

A Vapor middleware to redirect reverse proxy requests originating as http to https.

For example, if you are deploying a Vapor app to a Heroku free dyno, you might wish to piggyback on the SSL of the herokuapp.com domain. The Heroku router will relay both http and https requests to your app as http, but report the original scheme in the [appended header]([https://devcenter.heroku.com/articles/http-routing#heroku-headers) `X-Forwarded-Proto`. We can inspect this header, and use it to redirect http requests to https.

# Usage

To use Vapor X-Forwarded-Proto Middleware, add the middleware to your `Config` and your `droplet.json`:

```swift
let config = Config()
let xfpMiddleware = XFPMiddleware()
config.addConfigurable(middleware: xfpMiddleware, name: "xfp-middleware")
let drop = try Droplet(config)
```
