import PackageDescription

let package = Package(
    name: "EnforceHerokuPiggybackSSL",
    dependencies: [
        .Package(url: "https://github.com/vapor/vapor.git", majorVersion: 1)
    ]
)
