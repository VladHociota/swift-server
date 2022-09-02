// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "VaporServer",
    platforms: [.macOS("12.0")],
    products: [
        .library(
            name: "VaporHelpers",
            targets: ["VaporHelpers"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0"),
    ],
    targets: [
        .target(
            name: "VaporHelpers",
            dependencies: [
                .product(name: "Vapor", package: "Vapor"),
            ]),
        .testTarget(
            name: "VaporHelpersTests",
            dependencies: ["VaporHelpers"]),
    ]
)
