#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
# ACRH17 KERNEL 5.4
#=============================================================

# 启用 fw876/helloworld
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 增加源
# sed -i '$a src-git lienol https://github.com/xiaorouji/openwrt-package' feeds.conf.default

# git clone https://github.com/kenzok8/small.git
