// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "IonicBackgroundServiceCapastor",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "IonicBackgroundServiceCapastor",
            targets: ["BackgroundServiceCapPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "BackgroundServiceCapPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/BackgroundServiceCapPlugin"),
        .testTarget(
            name: "BackgroundServiceCapPluginTests",
            dependencies: ["BackgroundServiceCapPlugin"],
            path: "ios/Tests/BackgroundServiceCapPluginTests")
    ]
)