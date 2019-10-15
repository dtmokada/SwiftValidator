// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "SwiftValidator",
    products: [
        .library(
            name: "SwiftValidator",
            targets: ["SwiftValidator"]),
    ],
    targets: [
        .target(
            name: "SwiftValidator",
            dependencies: [],
            path: "SwiftValidator",
            exclude: [
                "Core",
                "Rules/ValidationRule.swift",
                "Rules/ConfirmRule.swift"
            ]
        ),
        .testTarget(
            name: "SwiftValidatorTests",
            dependencies: ["SwiftValidator"],
            path: "SwiftValidatorTests"
        ),
    ]
)
