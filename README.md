# Mercer's OpenWrt source

## [![Build](https://img.shields.io/github/workflow/status/KFERMercer/OpenWrt/OpenWrt-CI/master?color=blue)](https://github.com/KFERMercer/OpenWrt/actions?query=workflow%3AOpenWrt-CI) [![Release](https://img.shields.io/github/release/KFERMercer/OpenWrt?color=blue)](https://github.com/KFERMercer/OpenWrt/releases) [![Contributors](https://img.shields.io/github/contributors/KFERMercer/OpenWrt?color=blue)](https://github.com/KFERMercer/OpenWrt/graphs/contributors) [![Last commit](https://img.shields.io/github/last-commit/KFERMercer/OpenWrt?color=blue)](https://github.com/KFERMercer/OpenWrt/commits/master)

This repository is a router firmware that my own using. \
I'm already made some improvements based on the original project.

## Build firmware:

To build your own firmware, you need to have access to a Linux, BSD or MacOSX system (case-sensitive filesystem required). Cygwin will not be supported because of the lack of case sensitiveness in the file system.

Also, you need to have installed necessary packages. For example, in Debian: \
running

```shell
sudo apt-get update
```

then

```shell
sudo apt-get -y install build-essential asciidoc binutils bzip2 gawk gettext git libncurses5-dev libz-dev patch python3 python2.7 unzip zlib1g-dev lib32gcc1 libc6-dev-i386 subversion flex uglifyjs git-core gcc-multilib p7zip p7zip-full msmtp libssl-dev texinfo libglib2.0-dev xmlto qemu-utils upx libelf-dev autoconf automake libtool autopoint device-tree-compiler g++-multilib antlr3 gperf wget curl swig rsync
```


Run

```shell
./scripts/feeds update -a
```

to get all the latest package definitions, defined in `/feeds.conf` or `/feeds.conf.default` respectively;

```shell
./scripts/feeds install -a
```

to install symlinks of all of them into `/package/feeds/`.


Use

```shell
make menuconfig
```

to configure your image.


Simply running

```shell
make
```

will build your firmware. It will download all sources, build the cross-compile toolchain, and then cross-compile the kernel and all choosen applications for your target system.

## Acknowledgements:

The original codes built by [OpenWrt Project](https://openwrt.org), other core codes comes from [coolsnowwolf](https://github.com/coolsnowwolf/lede). \
For this, I am sincerely pay tribute to them.
