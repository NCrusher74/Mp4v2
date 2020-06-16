// swift-tools-version:5.2

import PackageDescription

let package = Package(
  name: "MP4v2",
  products: [
    .library(name: "MP4v2", targets: ["CMP4v2"])
  ],
  targets: [
    .target(
      name: "CMP4v2",
      dependencies: ["CPlatform"],
      path: "",
      sources: ["src"],
      publicHeadersPath: "include",
      cSettings: [
        .headerSearchPath(""),
        .headerSearchPath("build")
      ]
    ),
    .target(
      name: "CPlatform",
      path: "",
      exclude: [
        "libplatform/io/File_win32.cpp",
        "libplatform/io/FileSystem_win32.cpp",
        "libplatform/number/random_win32.cpp",
        "libplatform/process/process_win32.cpp",
        "libplatform/time/time_win32.cpp"
      ],
      sources: ["libplatform"],
      cSettings: [
        .headerSearchPath(""),
        .headerSearchPath("build"),
      ]
    ),
    .target(
      name: "MP4v2Example",
      dependencies: ["CMP4v2"]
    )
  ]
)
