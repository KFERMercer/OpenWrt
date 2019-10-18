#
# Copyright (C) 2019 OpenWrt.org
#
# KFERMercer <KFER.Mercer@gmail.com>
#
# This is free software, licensed under the GNU General Public License v3.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=adguardhome
PROJECT_NAME:=AdGuardHome
PKG_VERSION:=v0.99.0
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
	SECTION:=net
	CATEGORY:=Network
	TITLE:=Network-wide ads & trackers blocking DNS server
	URL:=https://github.com/AdguardTeam/AdGuardHome
endef


define Package/$(PKG_NAME)/description
Network-wide ads & trackers blocking DNS server
endef

STRIP:=true

ifeq ($(ARCH),i386)
	PKG_ARCH_ADGUARDHOME:=386
	PKG_MD5SUM:=451bcdb7a51fe2615c3827ff8c691c3f
endif

ifeq ($(ARCH),x86_64)
	PKG_ARCH_ADGUARDHOME:=amd64
	PKG_MD5SUM:=5029a98c7c7006b6b762b7fa373bd990
endif

ifeq ($(ARCH),mipsel)
	PKG_ARCH_ADGUARDHOME:=mipsle
	PKG_MD5SUM:=092d744ec93497bb95fd0b713913f144
endif

ifeq ($(ARCH),mips)
	PKG_ARCH_ADGUARDHOME:=mips
	PKG_MD5SUM:=15967124b8a463c1af1cd7862120fa1a
endif

ifeq ($(ARCH),arm)
	PKG_ARCH_ADGUARDHOME:=arm
	PKG_MD5SUM:=b376ec4bfb4432f0b5247928a1a580d3
endif

ifeq ($(ARCH),arm64)
	PKG_ARCH_ADGUARDHOME:=arm64
	PKG_MD5SUM:=8c5b5d8bddfcd69d0649405508a604d4
endif

ifeq ($(ARCH),aarch64)
	PKG_ARCH_ADGUARDHOME:=arm64
	PKG_MD5SUM:=8c5b5d8bddfcd69d0649405508a604d4
endif

TAR_NAME:=AdGuardHome_linux_$(PKG_ARCH_ADGUARDHOME)

PKG_SOURCE:=$(TAR_NAME).tar.gz

PKG_SOURCE_URL:=https://github.com/AdguardTeam/AdGuardHome/releases/download/$(PKG_VERSION)/

UNTAR_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)/$(PKG_NAME)-extract/$(PKG_ARCH_ADGUARDHOME)

PKG_HASH:=skip

define Build/Prepare
	mkdir -vp $(UNTAR_DIR)
	tar -zxvf $(DL_DIR)/$(PKG_SOURCE) -C $(UNTAR_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(UNTAR_DIR)/*/$(PROJECT_NAME) $(1)/usr/bin/$(PKG_NAME)
	chmod 755 $(1)/usr/bin/$(PKG_NAME)
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
