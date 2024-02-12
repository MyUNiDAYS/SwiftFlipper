// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "SwiftFlipper",
    platforms: [
        .iOS(.v13),
        .macOS(.v12),
        .tvOS(.v13),
    ],
    products: [
        .library(
            name: "SwiftFlipper",
            targets: ["SwiftFlipper"]),
    ],
    dependencies: [
        .package(
            url: "git@github.com:MyUNiDAYS/FlipperPluginUtils.git",
            exact: Version("0.0.1")
        ),
    ],
    targets: [
        .target(
            name: "SwiftFlipper",
            dependencies: ["FlipperPluginUtils"]),
    ]
)
