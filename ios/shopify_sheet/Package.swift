// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "shopify_sheet",
    platforms: [
        .iOS("13.0")
    ],
    products: [
        // If the plugin name contains "_", the library name must use "-".
        .library(name: "shopify-sheet", targets: ["shopify_sheet"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework"),
        // Same major as the podspec's `~> 3`, from the version this plugin is tested with.
        .package(url: "https://github.com/Shopify/checkout-sheet-kit-swift.git", .upToNextMajor(from: "3.5.0"))
    ],
    targets: [
        .target(
            name: "shopify_sheet",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                .product(name: "ShopifyCheckoutSheetKit", package: "checkout-sheet-kit-swift")
            ]
        )
    ]
)
