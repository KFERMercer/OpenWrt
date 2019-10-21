# Mercer's OpenWrt source

## [![Release](https://img.shields.io/github/release/KFERMercer/OpenWrt)](https://github.com/KFERMercer/OpenWrt/releases) [![Repo size](https://img.shields.io/github/repo-size/KFERMercer/OpenWrt)](https://github.com/KFERMercer/OpenWrt/archive/master.tar.gz) [![Contributors](https://img.shields.io/github/contributors/KFERMercer/OpenWrt)](https://github.com/KFERMercer/OpenWrt/graphs/contributors) [![Last commit](https://img.shields.io/github/last-commit/KFERMercer/OpenWrt)](https://github.com/KFERMercer/OpenWrt/commits/master)

This repository is a router firmware that my own using. \
I'm already made some improvements based on the original project.

## How to build:

To build your own firmware, you need to have access to a Linux, BSD or MacOSX system (case-sensitive filesystem required). Cygwin will not be supported because of the lack of case sensitiveness in the file system.

Also, you need to have installed necessary packages. For example, in Debian: \
running

```shell
sudo apt-get update
```

then

```shell
sudo apt-get -y install build-essential asciidoc binutils bzip2 gawk gettext git libncurses5-dev patch unzip zlib1g-dev lib32gcc1 libc6-dev subversion flex node-uglify git-core gcc-multilib p7zip-full msmtp libssl-dev texinfo libglib2.0-dev xmlto qemu-utils upx-ucl libelf-dev autoconf automake libtool autopoint
```

\
Run

```shell
./scripts/feeds update -a
```

to get all the latest package definitions, defined in `/feeds.conf` or `/feeds.conf.default` respectively;

```shell
./scripts/feeds install -a
```

to install symlinks of all of them into `/package/feeds/`.

\
Use

```shell
make menuconfig
```

to configure your image.

\
Simply running

```shell
make
```

will build your firmware. It will download all sources, build the cross-compile toolchain, and then cross-compile the kernel and all choosen applications for your target system.

## Acknowledgements:

The original codes built by [OpenWrt Project](https://openwrt.org), other core codes comes from [coolsnowwolf](https://github.com/coolsnowwolf/lede). \
For this, I am sincerely pay tribute to them.
