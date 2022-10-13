// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KituraOpenAPI",
    products: [
        .library(
            name: "KituraOpenAPI",
            targets: ["KituraOpenAPI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Kitura/Kitura.git", from: "3.0.0"),
        .package(url: "https://github.com/ColemanCDA/Swift-cfenv.git", .branch("feature/swift-5_7")),
        .package(url: "https://github.com/Kitura/LoggerAPI.git", from: "2.0.0"),
    ],
    targets: [
        .target(
            name: "KituraOpenAPI",
            dependencies: ["Kitura", "CloudFoundryEnv", "LoggerAPI"]),
        .testTarget(
            name: "KituraOpenAPITests",
            dependencies: ["KituraOpenAPI", "Kitura"]),
    ]
)
