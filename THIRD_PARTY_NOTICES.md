# 第三方软件声明

更新时间：2026-11-19 16:59:41 +0800

MediaFFmpegSDK 的 `appstore-safe` 构建使用以下第三方组件。版本与源码地址来自构建脚本默认值；实际分发内容以各包的 `BUILD_MANIFEST.txt` 为准。

| 组件 | 版本 | 许可证 | 源码 |
| --- | --- | --- | --- |
| FFmpeg | 9.0.2 | LGPL-2.1-or-later | https://ffmpeg.org/releases/ffmpeg-9.0.2.tar.xz |
| FSPlayer | 1.1.3 加 SDK overlay | LGPL-2.1-or-later | https://github.com/debugly/fsplayer/tree/1.1.3 |
| OpenCORE AMR | 0.1.6 | Apache-2.0 | https://downloads.sourceforge.net/project/opencore-amr/opencore-amr/opencore-amr-0.1.6.tar.gz |
| libvpx | 1.15.2 | BSD-3-Clause | https://github.com/webmproject/libvpx/archive/refs/tags/v1.15.2.tar.gz |
| Opus | 1.5.2 | BSD-3-Clause | https://downloads.xiph.org/releases/opus/opus-1.5.2.tar.gz |
| LAME | 3.100 | LGPL-2.0-or-later | https://downloads.sourceforge.net/project/lame/lame/3.100/lame-3.100.tar.gz |
| libogg | 1.3.6 | BSD-3-Clause | https://downloads.xiph.org/releases/ogg/libogg-1.3.6.tar.xz |
| libvorbis | 1.3.7 | BSD-3-Clause | https://downloads.xiph.org/releases/vorbis/libvorbis-1.3.7.tar.xz |
| libwebp | 1.6.0 | BSD-3-Clause | https://storage.googleapis.com/downloads.webmproject.org/releases/webp/libwebp-1.6.0.tar.gz |
| FreeType | 2.13.3 | FTL or GPL-2.0-or-later | https://download.savannah.gnu.org/releases/freetype/freetype-2.13.3.tar.xz |
| FriBidi | 1.0.16 | LGPL-2.1-or-later | https://github.com/fribidi/fribidi/releases/download/v1.0.16/fribidi-1.0.16.tar.xz |
| HarfBuzz | 8.5.0 | MIT | https://github.com/harfbuzz/harfbuzz/releases/download/8.5.0/harfbuzz-8.5.0.tar.xz |
| libass | 0.17.4 | ISC | https://github.com/libass/libass/releases/download/0.17.4/libass-0.17.4.tar.xz |
| Noto Sans CJK SC Regular | noto-cjk f8d157532fbfaeda587e826d4cd5b21a49186f7c | SIL Open Font License 1.1 | https://github.com/notofonts/noto-cjk |
| zimg | 3.0.6 | WTFPL-2.0 | https://github.com/sekrit-twc/zimg/archive/refs/tags/release-3.0.6.tar.gz |
| libaom | 3.12.1 | BSD-2-Clause | https://storage.googleapis.com/aom-releases/libaom-3.12.1.tar.gz |
| dav1d | 1.5.1 | BSD-2-Clause | https://downloads.videolan.org/pub/videolan/dav1d/1.5.1/dav1d-1.5.1.tar.xz |
| OpenJPEG | 2.5.3 | BSD-2-Clause | https://github.com/uclouvain/openjpeg/archive/refs/tags/v2.5.3.tar.gz |
| libtheora | 1.1.1 | BSD-3-Clause | https://downloads.xiph.org/releases/theora/libtheora-1.1.1.tar.xz |
| Speex | 1.2.1 | BSD-3-Clause | https://downloads.xiph.org/releases/speex/speex-1.2.1.tar.gz |
| TwoLAME | 0.4.0 | LGPL-2.1-or-later | https://downloads.sourceforge.net/project/twolame/twolame/0.4.0/twolame-0.4.0.tar.gz |

## 构建边界

DASH 使用 Apple 平台动态提供的 libxml2。交付包中的 FFmpeg 引用系统库。

- 默认 profile 禁止 `--enable-gpl`、`--enable-nonfree` 和 `--enable-version3`。
- OpenCORE AMR-NB encoder 作为独立 Apache-2.0 组件构建，不通过 FFmpeg external library 方式链接。
- FSPlayer 本地差异只保存在 `overlays/fsplayer`，发行源码与 notice 必须说明存在修改。
- FSPlayer 源码基线为 `1.1.3` / `5b479ebcb6d0748e0e6a4693701aa5e59e86d7fc`。许可原文与上游 NOTICE 随包交付，FFmpeg 独立使用 9.0.2 官方源码。
- 修改依赖版本、启用组件或 configure flags 后，必须重新核对许可证兼容性并更新本文件。

本文件用于提供组件来源和许可信息，不替代正式法律审查。

## 1.0.0-rc.20261124 公开分发

FFmpeg 三个平台的配置中 CONFIG_GPL、CONFIG_NONFREE 和 CONFIG_VERSION3 均为 0。FreeType 采用 FreeType License。Portions of this software are copyright © The FreeType Project (www.freetype.org). All rights reserved. SDK 通过操作系统动态链接 libxml2。使用本版本的对应源码、修改和可重新链接目标文件见[发布附件](https://github.com/OYForever/MediaFFmpegSDK-Binary/releases/download/1.0.0-rc.20261124/MediaFFmpegSDK-CorrespondingSource.tar.gz)。
