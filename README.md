# 云编译 N1 OpenWrt 固件

**说明**：
- 本项目使用 Github Actions 下载 [Lean](https://github.com/coolsnowwolf/lede) 的 `Openwrt` 源码仓库，进行云编译。
- 本项目使用定时编译（北京时间每周日下午4点开始运行编译）及触发编译（更新 `README.md`、 `script.sh`、 `config.sh`后可开始编译）两种方式。
- 本项目编译固件适配斐讯 N1 盒子，如需刷机，可直接下载 [releases](https://github.com/huangqian8/Cloud-N1-OpenWrt/releases/latest) 内固件。
- 本项目编译配置如下：


## 感谢 ❤️
- 源码来源： Lean 的 Openwrt 源码仓库 https://github.com/coolsnowwolf/lede
- 脚本来源： P3TERX 的 使用 GitHub Actions 云编译 OpenWrt https://github.com/P3TERX/Actions-OpenWrt
- 打包脚本： Flippy 的 OpenWrt 打包脚本 Actions https://github.com/ophub/flippy-openwrt-actions
