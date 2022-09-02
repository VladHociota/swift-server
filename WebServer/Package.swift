// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "WebServer",
    platforms: [.macOS("12.0")],
    products: [
        .executable(
            name: "Server", 
            targets: ["Server"]),
        .library(
            name: "WebServer",
            targets: ["WebServer"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/leaf.git", from: "4.0.0"),
        .package(name: "VaporServer", path: "../VaporServer"),
    ],
    targets: [
        .target(
            name: "WebServer",
            dependencies: [
                .product(name: "Leaf", package: "leaf"),
                .product(name: "VaporHelpers", package: "VaporServer")
            ]),
        .executableTarget(
            name: "Server",
            dependencies: ["WebServer"]),
        .testTarget(
            name: "WebServerTests",
            dependencies: ["WebServer"]),
    ]
)
