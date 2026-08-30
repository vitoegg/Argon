# Argon

基于 [`jerrykuku/luci-theme-argon`](https://github.com/jerrykuku/luci-theme-argon) 个性化调整的 LuCI 主题，做减法为主：只留深色、只留一张背景、只留一行 Footer。

### 🎨 自定义修改

1. **固定深色**：移除浅色/自动模式与外观配置项，样式静态固定，只加载一份可缓存 CSS
2. **固定背景**：登录页固定使用 `bg1.webp`，砍掉在线壁纸、随机背景和视频背景
3. **精简 Footer**：主页与登录页底部仅保留 ArgonTheme 链接
4. **不采纳上游 OpenClash 适配层**：v2.4.7 新增的 `--oc-*` 主题适配未同步，OpenClash 页面沿用其自带样式
5. **修复上游三处小毛病**
    > **侧边栏**：切换到子菜单更少的类目时不再跳动
    > **模态框**：补回 `.modal ul` 缩进，固件刷写确认页列表不再顶格
    > **加载动画**：修复失效的 SVG 路径，并抑制通知容器上的误显

### 📌 上游版本

- **上游仓库**：[jerrykuku/luci-theme-argon](https://github.com/jerrykuku/luci-theme-argon)
- **上游版本**：2.4.7
- **同步日期**：20260830
- **同步标签**：[ddefe5f05ca334dba10d2d65d25ebf14e986ee88](https://github.com/jerrykuku/luci-theme-argon/commit/ddefe5f05ca334dba10d2d65d25ebf14e986ee88)

### 🙏 致谢

感谢原作者 [Jerrykuku](https://github.com/jerrykuku) 开发的优秀 Argon 主题。
