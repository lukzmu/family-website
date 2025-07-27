// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "FamilyWebsite",
    platforms: [.macOS(.v12)],
    products: [
        .executable(
            name: "FamilyWebsite",
            targets: ["FamilyWebsite"]
        )
    ],
    dependencies: [
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.8.0")
    ],
    targets: [
        .executableTarget(
            name: "FamilyWebsite",
            dependencies: ["Publish"]
        )
    ]
)