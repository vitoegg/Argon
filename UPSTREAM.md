# Changes from Upstream

Base: [jerrykuku/luci-theme-argon](https://github.com/jerrykuku/luci-theme-argon) v2.4.7, commit [ddefe5f](https://github.com/jerrykuku/luci-theme-argon/commit/ddefe5f05ca334dba10d2d65d25ebf14e986ee88), synced 2026-08-30.

Upstream v3.0.0 rewrote the styles around configurable color tokens and is not merged. A few of its fixes are backported below and marked `v3.0.0`.

## Removed

- Light and auto color modes, the `argon-config` settings read by the templates, and the runtime `dark.css` injection.
- Login backgrounds other than `bg1.webp`: online wallpapers (`luci.argon_wallpaper` rpcd and ACL), random local backgrounds, video backgrounds and the volume control. The package no longer depends on `wget` and `jsonfilter`.
- Footer version links on the main and login pages. Only the ArgonTheme link remains.
- `woff` font fallbacks. Only `woff2` is shipped.
- Style adapters for third-party apps: OpenClash (including the v2.4.7 `--oc-*` theming), Passwall, Passwall2, vssr, Dockerman, SmartDNS, DDNS, ttyd, NPC, nlbwmon, MWAN3, OpenVPN, File Assistant, File Transfer, Partexp, Crontab Helper and Auto Reboot.
- Unused assets: `bg1.jpg`, `blank.png`, `volume_*.svg` and `background/`.

## Appearance

- Dark mode is fixed: `dark.less` is compiled into `cascade.css` and `theme-color` is `#483d8b`.
- The login panel sits on the left over `bg1.webp`, with fixed blur and opacity and softer shadows. Its height uses `dvh`, so mobile browser toolbars do not cut it off.

## Performance

- `cascade.css` is compressed and versioned by a content hash at build time (`?v=<md5>`) instead of the package version.
- Admin pages no longer load `luci.js` a second time. The translations URL includes `pkgs_update_time`.
- The login page queries the board info once and passes the hostname on to its header.
- Fonts are subset: Google Sans keeps Latin-1, punctuation, arrows, math and shapes (56.7 KB to 34.3 KB); TypoGraphica keeps Latin-1 (14.6 KB to 11.2 KB). The icon font uses `font-display: block` to avoid flashing placeholder boxes.

## Login Form

- The form has no `action` attribute and posts to the current URL, like LuCI's own templates.
- Inputs set `autocomplete`, `autocapitalize`, `spellcheck` and `aria-label`, so password managers and mobile keyboards handle them correctly.

## Fixes

- Sidebar: keeps its width from the first paint, so the page no longer shifts sideways while the menu renders after each navigation.
- Sidebar: no jump when switching to a category with fewer items; active classes are cleared after the collapse animation.
- Sidebar animations honor `prefers-reduced-motion` (`v3.0.0`).
- Modals: restored the `ul` indent, and alert messages inside modals stay in the document flow.
- Loading spinner: fixed the SVG path, and no stray spinner on notifications.
- Notification banners stay in the page flow below the header instead of floating in the center.
- Empty multi-select dropdowns no longer reserve height for hidden items (upstream v2.4.8, #714).
- Flash firmware dialog: readable dark colors, multi-line option labels (upstream v2.4.8), and checksums wrap on narrow screens.
- DynamicList fields, such as firewall rule addresses: LuCI 25.12 throws a `TypeError` and leaves the typed value in the input after a custom entry. `Dropdown.setFocus` is now guarded against detached options (`v3.0.0`).
- Head meta adds `mobile-web-app-capable`.
