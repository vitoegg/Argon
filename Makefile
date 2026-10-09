#
# Copyright (C) 2008-2019 Jerrykuku
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-theme-argon
LUCI_TITLE:=Argon Theme
PKG_VERSION:=2.4.7
PKG_RELEASE:=20260830

CONFIG_LUCI_CSSTIDY:=

# Version cascade.css by content hash so browsers refetch it whenever it changes.
# Defined before luci.mk, which expands BuildPackage on include; the hook name
# matches luci.mk's default LUCI_NAME.
ARGON_CSS_HASH = $(shell $(MKHASH) md5 $(CURDIR)/htdocs/luci-static/argon/css/cascade.css | cut -c1-8)

define Build/Prepare/$(notdir $(CURDIR))
	find $(PKG_BUILD_DIR)/ucode -type f -name '*.ut' \
		-exec $(SED) 's|\(/css/cascade\.css\)"|\1?v=$(ARGON_CSS_HASH)"|g' {} +
endef

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
