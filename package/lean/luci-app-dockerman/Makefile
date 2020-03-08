include $(TOPDIR)/rules.mk

LUCI_TITLE:=Docker Manager interface for LuCI
LUCI_DEPENDS:=+luci-lib-docker +docker-ce +e2fsprogs +fdisk +ttyd
PKG_NAME:=luci-app-dockerman
PKG_VERSION:=v0.4.1
PKG_RELEASE:=leanmod
PKG_MAINTAINER:=lisaac <https://github.com/lisaac/luci-app-dockerman>
PKG_LICENSE:=AGPL-3.0

include $(TOPDIR)/feeds/luci/luci.mk

define Package/$(PKG_NAME)/postinst
#!/bin/sh
if [ -z "$${IPKG_INSTROOT}" ]; then
	uci delete ucitrack.@dockerd[-1] >/dev/null 2>&1
	uci add ucitrack dockerd >/dev/null 2>&1
	uci set ucitrack.@dockerd[-1].init=dockerd >/dev/null 2>&1
	uci commit ucitrack >/dev/null 2>&1
	rm -rf /tmp/luci-indexcache /tmp/luci-modulecache >/dev/null 2>&1
fi
endef

# call BuildPackage - OpenWrt buildroot signature
