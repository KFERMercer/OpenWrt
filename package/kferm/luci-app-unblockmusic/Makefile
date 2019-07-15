# Copyright (C) 2016 Openwrt.org
#
# This is free software, licensed under the Apache License, Version 2.0 .
#
# licheng
# www.maxlicheng.com
# 2019-06-08
#

include $(TOPDIR)/rules.mk

LUCI_TITLE:=LuCI support for Unblock NeteaseCloudMusic
LUCI_DEPENDS:=+node
LUCI_PKGARCH:=all
PKG_NAME:=luci-app-unblockmusic
PKG_VERSION:=1
PKG_RELEASE:=36
PKG_MAINTAINER:=<https://github.com/maxlicheng/luci-app-unblockmusic>

define Package/$(PKG_NAME)/postinst
#!/bin/sh
chmod 755 /etc/init.d/unblockmusic >/dev/null 2>&1
/etc/init.d/unblockmusic enable >/dev/null 2>&1
exit 0
endef

include $(TOPDIR)/feeds/luci/luci.mk


# call BuildPackage - OpenWrt buildroot signature

