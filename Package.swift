// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "VaporXFPMiddleware",
    products: [
        .library(name: "VaporXFPMiddleware", targets: ["XFPMiddleware"])
    ],
    dependencies: [
    	// 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0")
    ],
    targets: [
        .target(name: "XFPMiddleware", dependencies: ["Vapor"]),
        .testTarget(name: "XFPMiddlewareTests", dependencies: ["XFPMiddleware"])
    ]
)
