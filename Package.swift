// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "BrowserActivity",
  products: [
    .library(
      name: "BrowserActivity",
      targets: ["BrowserActivity"]
    ),
  ],
  dependencies: [
  ],
  targets: [
    .target(
      name: "BrowserActivity",
      resources: [
        .process("Resources"),
      ]
    ),
  ]
)
