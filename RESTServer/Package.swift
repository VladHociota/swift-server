// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "RESTServer",
    platforms: [.macOS("12.0")],
    products: [
        .executable(
            name: "Server", 
            targets: ["Server"]),
        .library(
            name: "RESTServer",
            targets: ["RESTServer"]),
    ],
    dependencies: [
        .package(name: "VaporServer", path: "../VaporServer"),
    ],
    targets: [
        .target(
            name: "RESTServer",
            dependencies: [
                .product(name: "VaporHelpers", package: "VaporServer")
            ]),
        .executableTarget(
            name: "Server",
            dependencies: ["RESTServer"]),
        .testTarget(
            name: "RESTServerTests",
            dependencies: ["RESTServer"]),
    ]
)
