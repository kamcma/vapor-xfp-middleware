# X-Forwarded-Proto SSL Middleware for Vapor

A Vapor middleware to redirect reverse proxy requests originating as http to https.

# Usage

To use Vapor X-Forwarded-Proto Middleware, add the middleware to your `Config` and your `droplet.json`:

```swift
let config = Config()
let xfpMiddleware = XFPMiddleware()
config.addConfigurable(middleware: xfpMiddleware, name: "xfp-middleware")
let drop = try Droplet(config)
```
