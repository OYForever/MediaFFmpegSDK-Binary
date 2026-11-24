# MediaFFmpegSDK

通过 SwiftPM 接入单个动态框架，支持 arm64 iOS 15 及以上的真机和模拟器，以及 arm64 macOS 13 及以上。发布仓库、二进制和对应源码均可匿名下载。

```swift
// Package.swift — dependencies
.package(url: "https://github.com/OYForever/MediaFFmpegSDK-Binary.git", exact: "1.0.0-rc.20261124")

// Target dependencies
.product(name: "MediaFFmpegSDK", package: "MediaFFmpegSDK-Binary")
```

导入模块 `import MediaFFmpegSDK`。在 Xcode 的 Add Package Dependencies 中也可使用相同地址，版本规则选择 Exact Version。CI 应保存生成的 Package.resolved。

This public package delivers one dynamic XCFramework. Use the exact version in the example above, link the MediaFFmpegSDK product and commit the resulting Package.resolved. SwiftPM checks the binary ZIP before linking. The released framework fingerprint covers the original three slices, resources, Swift modules and dSYMs.

| 1.0.0-rc.20261124 | SHA-256 |
| --- | --- |
| SwiftPM artifact ZIP | `6d4ab091133ccf33278728533dafe8a6659925c5517694ea60e81a78effda93f` |
| MediaFFmpegSDK.xcframework file tree | `e0e53ae7d5d2d8a1334909bdef34e306f1a68e6c5c89574c9562505e47711bfc` |

本软件使用 FFmpeg、FSPlayer 等 LGPL 组件。发布附件提供对应源码、补丁、实际构建脚本和可重新链接的 SDK 目标文件。各组件版权、许可及构建清单见仓库。The corresponding source kit includes instructions for replacing the LGPL components on all three platforms. [Corresponding source and relinking kit](https://github.com/OYForever/MediaFFmpegSDK-Binary/releases/download/1.0.0-rc.20261124/MediaFFmpegSDK-CorrespondingSource.tar.gz) · [Third-party notices](THIRD_PARTY_NOTICES.md) · [Licenses](LICENSES/) · [Build manifest](BUILD_MANIFEST.txt)
