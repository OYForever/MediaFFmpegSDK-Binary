// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "MediaFFmpegSDK",
    platforms: [.iOS(.v15), .macOS(.v13)],
    products: [.library(name: "MediaFFmpegSDK", targets: ["MediaFFmpegSDK"])],
    targets: [
        .binaryTarget(
            name: "MediaFFmpegSDK",
            url: "https://github.com/OYForever/MediaFFmpegSDK-Binary/releases/download/1.0.0-rc.20261124/MediaFFmpegSDK.xcframework.zip",
            checksum: "6d4ab091133ccf33278728533dafe8a6659925c5517694ea60e81a78effda93f"
        )
    ]
)
