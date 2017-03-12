import PackageDescription

let package = Package(
    name: "VaporXFPMiddleware",
    dependencies: [
        .Package(url: "https://github.com/vapor/vapor.git", majorVersion: 1)
    ]
)
