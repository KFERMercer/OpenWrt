# Forked from [KFERMercer/OpenWrt](https://github.com/KFERMercer/OpenWrt) ，I am not author.

## [![Build](https://img.shields.io/github/workflow/status/Narizgnaw/Openwrt_Homeuse/OpenWrt-CI?style=flat-square)](https://github.com/Narizgnaw/Openwrt_Homeuse/actions?query=workflow%3AOpenWrt-CI) [![Last commit](https://img.shields.io/github/last-commit/Narizgnaw/Openwrt_Homeuse?style=flat-square)](https://github.com/Narizgnaw/Openwrt_Homeuse/commits/master)

# 这是一个带有自动编译[Openwrt](https://github.com/openwrt/openwrt)固件的项目，目前生成的固件可以给X86_64路由器用。

## 1.固件应该会在每天自动编译好，点击上面的[Action](https://github.com/Narizgnaw/Openwrt_Homeuse/actions)按钮即可下载此固件。

## 2.固件特色：
（1）在KFERMercer大佬的固件基础上增加了root分区的大小（某些第三方应用的日志可能会把root分区占满）；

（2）增加了Softether（L2TP/IPSec服务端，可以Windows/Mac/iOS/Android无障碍连接）； 

（3）加了luci-app-uhttpd替换了luci-app-webadmin，这是用来https远程访问路由器web管理界面的应用；

（4）我不用minidlna、openvpn、ttyd、verysync、wireguard，所以把这几个luci-app的编译取消了；

（5）其余和KFERMercer的固件就没什么区别了，大佬固件比较稳定，QQ秒回，BUG秒修，集合常用功能+黑色主题+IPv6+Docker，无多拨负载均衡；

（6）如果想变更配置，请修改/makeconfig.d/x86_64.config这个文件。

## 3.不要Fork我的库，Fork以下两位大佬的库。

[![Fork KFER OP](https://img.shields.io/github/forks/KFERMercer/OpenWrt?label=Fork%20KFERMercer%2FOpenWrt&style=flat-square)](https://github.com/KFERMercer/OpenWrt) [![Fork LEAN OP](https://img.shields.io/github/forks/coolsnowwolf/lede?label=Fork%20Lean%2FOpenWrt&style=flat-square)](https://github.com/coolsnowwolf/lede)

## 4.本库仅供自用，本人又菜又懒，暂时无法提供issue服务。

## 5.感谢Openwrt项目开发组。
