// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let packageName = "VonageWebRTC"

let package = Package(
    name: packageName,
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: packageName,
            targets: ["VonageWebRTC-AJ"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        .target(
            name: "VonageWebRTC-AJ",
            dependencies: [
                .target(name: packageName)
            ],
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreAudio"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("GLKit"),
                .linkedFramework("VideoToolbox"),
                .linkedFramework("Network"),
                .linkedFramework("MetalKit")
            ]
        ),
        .binaryTarget(
            name: packageName,
            url: "https://98point6-ios-sdk-swiftpm-binary.s3.us-west-2.amazonaws.com/VonageWebRTC-99.2.39.zip",
            checksum: "5b8912086bc55da7c938e672a473315bab707a5de6a499bc8a83555abc920ae4"
            ),
    ]
)
