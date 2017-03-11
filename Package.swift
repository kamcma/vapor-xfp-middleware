import PackageDescription

let package = Package(
    name: "XFPSSL",
    dependencies: [
        .Package(url: "https://github.com/vapor/vapor.git", majorVersion: 1)
    ]
)
