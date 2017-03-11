import PackageDescription

let package = Package(
    name: "EnforceXFPSSL",
    dependencies: [
        .Package(url: "https://github.com/vapor/vapor.git", majorVersion: 1)
    ]
)
