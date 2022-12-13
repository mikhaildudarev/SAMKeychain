// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SAMKeychain",
    defaultLocalization: "ru",
    products: [
        .library(
            name: "SAMKeychain",
            targets: [
                "SAMKeychain"
            ]
        ),
    ],
    targets: [
        .target(
            name: "SAMKeychain",
            dependencies: [],
            resources: [
                .process("SAMKeychain.bundle")
            ],
            publicHeadersPath: "headers",
            linkerSettings: [
                .linkedFramework("Security"),
                .linkedFramework("Foundation")
            ]
        ),
        .testTarget(
            name: "SAMKeychainTests",
            dependencies: [
                "SAMKeychain"
            ]
        )
    ]
)
