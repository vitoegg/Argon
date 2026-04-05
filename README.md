# Luci-theme-argon 备份仓库

## 项目说明

这是一个 **备份仓库**，基于原版 [luci-theme-argon](https://github.com/jerrykuku/luci-theme-argon) 主题进行了个人定制修改。

## 主要修改内容

### 背景图片修改
- 替换了默认的背景图片 (`htdocs/luci-static/argon/img/bg1.webp`)
- 支持自定义背景图片，可放置在 `htdocs/luci-static/argon/background/` 目录下
- 支持格式：jpg、png、gif、mp4、webm

### Footer 信息修改
- 精简了页面底部信息，仅保留 ArgonTheme 链接
- 同时修改了主页 footer 和登录页 footer

### 侧边栏菜单修复
- 修复从子菜单较多的类目切换到子菜单较少的类目时菜单跳动的问题

### 模态框列表样式修复
- 恢复上游同步时遗漏的 `.modal ul` 列表缩进样式，修复固件刷写确认页面等模态框中列表项无缩进的问题

### 暗色模式默认化
- 将默认主题模式从 `normal`（跟随浏览器偏好）改为 `dark`（永久暗色）
- 仍可通过 UCI 配置切换回自动跟随模式：`uci set argon.global.mode='normal' && uci commit argon`

### 加载动画修复
- 修复上游 SVG 路径失效导致所有加载动画不显示的问题
- 恢复全局 `.spinning::before` 选择器，使按钮、固件校验等场景均正确显示旋转加载图标
- 抑制新版 LuCI 在应用配置通知容器上的误显（`#view > .spinning`、`.alert-message.spinning`）

## 版本信息

- **上游版本**: 2.4.3
- **同步日期**: 20260324
- **同步分支**: 7aba78ccb84297496f63e1dacefe64c89d83d72e
- **上游仓库**: [jerrykuku/luci-theme-argon](https://github.com/jerrykuku/luci-theme-argon)
- **依赖**: wget, jsonfilter

## 许可证

本项目基于 Apache License 2.0 开源协议。

## 原项目致谢

感谢原作者 [Jerrykuku](https://github.com/jerrykuku) 开发的优秀 Argon 主题。

---

**注意**: 这是个人备份仓库，如需获取最新版本请访问 [原项目地址](https://github.com/jerrykuku/luci-theme-argon)。
