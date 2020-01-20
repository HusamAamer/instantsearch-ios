// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "InstantSearch",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "InstantSearch",
            targets: ["InstantSearch"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url:"https://github.com/algolia/instantsearch-core-swift", from: "6.4.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "InstantSearch",
            dependencies: ["InstantSearchCore"],
            path: "./Sources"),
        .testTarget(
            name: "InstantSearchTests",
            dependencies: ["InstantSearch", "InstantSearchCore"],
            path: "./Tests/Sources")),
    ]
)
