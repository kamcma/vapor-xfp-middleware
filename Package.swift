// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "VaporXFPMiddleware",
    products: [
        .library(name: "VaporXFPMiddleware", targets: ["XFPMiddleware"])
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "2.3.0")
    ],
    targets: [
        .target(name: "XFPMiddleware", dependencies: ["Vapor"]),
        .testTarget(name: "XFPMiddlewareTests", dependencies: ["XFPMiddleware", "Testing"])
    ]
)
