// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Mp4v2",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "Mp4v2",
            targets: ["Mp4v2"]),
    ],
    //    dependencies: [
    //        // Dependencies declare other packages that this package depends on.
    //        // .package(url: /* package url */, from: "1.0.0"),
    //    ],
    targets: [
        .target(
            name: "Mp4v2",
            dependencies: [],
            path: "Sources/Mp4v2",
            cxxSettings: [
                .headerSearchPath(""),
                .headerSearchPath("include"),
                .headerSearchPath("include/mp4v2"),
                .headerSearchPath("libutil"),
                .headerSearchPath("libplatform"),
                .headerSearchPath("libplatform/io"),
                .headerSearchPath("libplatform/number"),
                .headerSearchPath("libplatform/process"),
                .headerSearchPath("libplatform/prog"),
                .headerSearchPath("libplatform/sys"),
                .headerSearchPath("libplatform/time"),
                .headerSearchPath("src"),
                .headerSearchPath("src/bmff"),
                .headerSearchPath("src/itmf"),
                .headerSearchPath("src/qtff"),
                .headerSearchPath("util")
        ]),
        .testTarget(
            name: "Mp4v2Tests",
            dependencies: ["Mp4v2"]),
    ]
)
