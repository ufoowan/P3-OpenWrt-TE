#!/bin/bash
#
# Modify default IP
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# Modify hostname
sed -i "s/hostname='OpenWrt'/hostname='RAYCLOUD'/g" package/base-files/files/bin/config_generate

# Modify build number
sed -i "s/OpenWrt /lc-sub build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-settings

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Device exclusive
svn export --force https://github.com/lc-sub/OpenWrt-TE/trunk/RAYCLOUD/dts target/linux/ramips/dts/mt7621_d-team_pbr-m1.dts
svn export --force https://github.com/lc-sub/OpenWrt-TE/trunk/RAYCLOUD/leds target/linux/ramips/mt7621/base-files/etc/board.d/01_leds
svn export --force https://github.com/lc-sub/OpenWrt-TE/trunk/RAYCLOUD/network target/linux/ramips/mt7621/base-files/etc/board.d/02_network
svn export --force https://github.com/lc-sub/OpenWrt-TE/trunk/RAYCLOUD/mk target/linux/ramips/image/mt7621.mk
