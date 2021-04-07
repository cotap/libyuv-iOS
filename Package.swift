// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "libyuv-iOS",
    platforms: [.iOS(.v9)],
    products: [
        .library(
            name: "libyuv-iOS",
            targets: ["libyuv-iOS"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "clibyuv-iOS",
                dependencies: [],
                path: "Sources/clibyuv-iOS"),
        .target(
            name: "libyuv-iOS",
            dependencies: [.target(name: "clibyuv-iOS")],
            path: "Sources/libyuv-iOS"),
    ]
)
