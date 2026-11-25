// swift-tools-version: 6.3

import PackageDescription

let package = Package(
    name: "Errors",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .library(
            name: "Errors",
            targets: [
                "Errors",
            ]
        ),
        .library(
            name: "ErrorsDSL",
            targets: [
                "ErrorsDSL",
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/swift-lco/Primitives.git",
            branch: "master"
        ),
        .package(
            url: "https://github.com/swift-dsl/DSL.git",
            branch: "master"
        ),
    ],
    targets: [
        .target(
            name: "Errors",
            dependencies: [
                .product(
                    name: "Primitives",
                    package: "Primitives"
                ),
            ]
        ),
        .target(
            name: "ErrorsDSL",
            dependencies: [
                "Errors",
                .product(
                    name: "DSL",
                    package: "DSL"
                ),
            ]
        ),
    ],
    swiftLanguageModes: [
        .v6,
    ]
)
