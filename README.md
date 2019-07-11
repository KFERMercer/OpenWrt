# Mercer's Openwrt source

This repository is a router firmware that my own using. \
I'm already made some improvements based on the original project.

## Notes:

To build your own firmware, you need to have access to a
Linux, BSD or MacOSX system (case-sensitive filesystem required). 
Cygwin will not be supported because of the lack of 
case sensitiveness in the file system.

Also, you need to have installed necessary packages.
For example, in Debian: \
running\
`sudo apt-get update`\
then\
`sudo apt-get -y install build-essential asciidoc binutils bzip2 gawk gettext git libncurses5-dev libz-dev patch unzip zlib1g-dev lib32gcc1 libc6-dev-i386 subversion flex uglifyjs git-core gcc-multilib p7zip p7zip-full msmtp libssl-dev texinfo libglib2.0-dev xmlto qemu-utils upx libelf-dev autoconf automake libtool autopoint`

Run `./scripts/feeds update -a` \
to get all the latest package definitions, defined in feeds.conf or feeds.conf.default respectively, \
and `./scripts/feeds install -a` \
to install symlinks of all of them into package/feeds/.

Use `make menuconfig` to configure your image.

Simply running `make -j1 V=s` will build your firmware. 
It will download all sources, build the cross-compile toolchain, 
the kernel and all choosen applications.

## Acknowledgements:

The original codes built by [OpenWrt Project](https://openwrt.org), 
other core codes comes from [coolsnowwolf](https://github.com/coolsnowwolf). \
For this, I am sincerely pay tribute to them.