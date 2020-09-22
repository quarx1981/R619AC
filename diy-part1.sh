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

filter_url='https://github.com/destan19/OpenAppFilter.git'       # AppFilter 地址

# 启用 fw876/helloworld
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 增加源
# sed -i '$a src-git lienol https://github.com/xiaorouji/openwrt-package' feeds.conf.default

# git clone https://github.com/kenzok8/small.git

echo '添加OpenAppFilter过滤器'
git clone $filter_url package/OpenAppFilter
echo 'CONFIG_PACKAGE_luci-app-oaf=y' >> R619AC.config
echo 'CONFIG_PACKAGE_kmod-oaf=y' >> R619AC.config
echo 'CONFIG_PACKAGE_appfilter=y' >> R619AC.config
echo 'CONFIG_PACKAGE_luci-i18n-oaf-zh-cn=y'  >> R619AC.config
