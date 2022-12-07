#!/bin/bash
#
# GFW
mkdir package/gfw
pushd package/gfw
svn co https://github.com/xiaorouji/openwrt-passwall/tree/packages/brook
svn co https://github.com/xiaorouji/openwrt-passwall/tree/packages/chinadns-ng
svn co https://github.com/xiaorouji/openwrt-passwall/tree/packages/hysteria
svn co https://github.com/fw876/helloworld/tree/master/naiveproxy
svn co https://github.com/xiaorouji/openwrt-passwall/tree/packages/shadowsocks-rust
svn co https://github.com/xiaorouji/openwrt-passwall/tree/packages/shadowsocksr-libev
svn co https://github.com/xiaorouji/openwrt-passwall/tree/packages/simple-obfs
svn co https://github.com/xiaorouji/openwrt-passwall/tree/packages/ssocks
svn co https://github.com/xiaorouji/openwrt-passwall/tree/packages/tcping
svn co https://github.com/xiaorouji/openwrt-passwall/tree/packages/trojan-go
svn co https://github.com/xiaorouji/openwrt-passwall/tree/packages/trojan-plus
svn co https://github.com/xiaorouji/openwrt-passwall/tree/packages/trojan
svn co https://github.com/xiaorouji/openwrt-passwall/tree/packages/v2ray-core
svn co https://github.com/xiaorouji/openwrt-passwall/tree/packages/v2ray-geodata
svn co https://github.com/xiaorouji/openwrt-passwall/tree/packages/v2ray-plugin
svn co https://github.com/fw876/helloworld/tree/master/v2raya
svn co https://github.com/xiaorouji/openwrt-passwall/tree/packages/xray-core
svn co https://github.com/xiaorouji/openwrt-passwall/tree/packages/xray-plugin
# SSRP
svn co https://github.com/fw876/helloworld/tree/master/luci-app-ssr-plus
sed -i "s/'services'/'vpn'/g" luci-app-ssr-plus/luasrc/controller/*.lua
sed -i 's/\"services\"/\"vpn\"/g' luci-app-ssr-plus/luasrc/controller/*.lua
sed -i 's/\/services\//\/vpn\//g' luci-app-ssr-plus/luasrc/controller/*.lua
sed -i 's/\[services\]/\[vpn\]/g' luci-app-ssr-plus/luasrc/controller/*.lua
sed -i "s/'services'/'vpn'/g" luci-app-ssr-plus/luasrc/model/cbi/shadowsocksr/*.lua
sed -i 's/\"services\"/\"vpn\"/g' luci-app-ssr-plus/luasrc/model/cbi/shadowsocksr/*.lua
sed -i 's/\/services\//\/vpn\//g' luci-app-ssr-plus/luasrc/model/cbi/shadowsocksr/*.lua
sed -i 's/\[services\]/\[vpn\]/g' luci-app-ssr-plus/luasrc/model/cbi/shadowsocksr/*.lua
sed -i "s/'services'/'vpn'/g" luci-app-ssr-plus/luasrc/view/shadowsocksr/*.htm
sed -i 's/\"services\"/\"vpn\"/g' luci-app-ssr-plus/luasrc/view/shadowsocksr/*.htm
sed -i 's/\/services\//\/vpn\//g' luci-app-ssr-plus/luasrc/view/shadowsocksr/*.htm
sed -i 's/\[services\]/\[vpn\]/g' luci-app-ssr-plus/luasrc/view/shadowsocksr/*.htm
# VSSR
git clone --depth=1 https://github.com/jerrykuku/lua-maxminddb.git
git clone --depth=1 https://github.com/jerrykuku/luci-app-vssr.git
sed -i "s/'services'/'vpn'/g" luci-app-vssr/luasrc/controller/*.lua
sed -i 's/\"services\"/\"vpn\"/g' luci-app-vssr/luasrc/controller/*.lua
sed -i 's/\/services\//\/vpn\//g' luci-app-vssr/luasrc/controller/*.lua
sed -i 's/\[services\]/\[vpn\]/g' luci-app-vssr/luasrc/controller/*.lua
sed -i "s/'services'/'vpn'/g" luci-app-vssr/luasrc/model/cbi/vssr/*.lua
sed -i 's/\"services\"/\"vpn\"/g' luci-app-vssr/luasrc/model/cbi/vssr/*.lua
sed -i 's/\/services\//\/vpn\//g' luci-app-vssr/luasrc/model/cbi/vssr/*.lua
sed -i 's/\[services\]/\[vpn\]/g' luci-app-vssr/luasrc/model/cbi/vssr/*.lua
sed -i "s/'services'/'vpn'/g" luci-app-vssr/luasrc/view/vssr/*.htm
sed -i 's/\"services\"/\"vpn\"/g' luci-app-vssr/luasrc/view/vssr/*.htm
sed -i 's/\/services\//\/vpn\//g' luci-app-vssr/luasrc/view/vssr/*.htm
sed -i 's/\[services\]/\[vpn\]/g' luci-app-vssr/luasrc/view/vssr/*.htm
# Passwall
svn co https://github.com/xiaorouji/openwrt-passwall2/tree/main/luci-app-passwall2/
sed -i "s/'services'/'vpn'/g" luci-app-passwall/luasrc/controller/*.lua
sed -i 's/\"services\"/\"vpn\"/g' luci-app-passwall/luasrc/controller/*.lua
sed -i 's/\/services\//\/vpn\//g' luci-app-passwall/luasrc/controller/*.lua
sed -i 's/\[services\]/\[vpn\]/g' luci-app-passwall/luasrc/controller/*.lua
sed -i "s/'services'/'vpn'/g" luci-app-passwall/luasrc/model/cbi/passwall/*/*/*.lua
sed -i 's/\"services\"/\"vpn\"/g' luci-app-passwall/luasrc/model/cbi/passwall/*/*/*.lua
sed -i 's/\/services\//\/vpn\//g' luci-app-passwall/luasrc/model/cbi/passwall/*/*/*.lua
sed -i 's/\[services\]/\[vpn\]/g' luci-app-passwall/luasrc/model/cbi/passwall/*/*/*.lua
sed -i "s/'services'/'vpn'/g" luci-app-passwall/luasrc/model/cbi/passwall/*/*.lua
sed -i 's/\"services\"/\"vpn\"/g' luci-app-passwall/luasrc/model/cbi/passwall/*/*.lua
sed -i 's/\/services\//\/vpn\//g' luci-app-passwall/luasrc/model/cbi/passwall/*/*.lua
sed -i 's/\[services\]/\[vpn\]/g' luci-app-passwall/luasrc/model/cbi/passwall/*/*.lua
sed -i "s/'services'/'vpn'/g" luci-app-passwall/luasrc/view/passwall/*/*.htm
sed -i 's/\"services\"/\"vpn\"/g' luci-app-passwall/luasrc/view/passwall/*/*.htm
sed -i 's/\/services\//\/vpn\//g' luci-app-passwall/luasrc/view/passwall/*/*.htm
sed -i 's/\[services\]/\[vpn\]/g' luci-app-passwall/luasrc/view/passwall/*/*.htm
# OpenClash
svn co https://github.com/vernesong/OpenClash/tree/master/luci-app-openclash
sed -i "s/'services'/'vpn'/g" luci-app-openclash/luasrc/controller/*.lua
sed -i 's/\"services\"/\"vpn\"/g' luci-app-openclash/luasrc/controller/*.lua
sed -i 's/\/services\//\/vpn\//g' luci-app-openclash/luasrc/controller/*.lua
sed -i 's/\[services\]/\[vpn\]/g' luci-app-openclash/luasrc/controller/*.lua
sed -i "s/'services'/'vpn'/g" luci-app-openclash/luasrc/model/cbi/openclash/*.lua
sed -i 's/\"services\"/\"vpn\"/g' luci-app-openclash/luasrc/model/cbi/openclash/*.lua
sed -i 's/\/services\//\/vpn\//g' luci-app-openclash/luasrc/model/cbi/openclash/*.lua
sed -i 's/\[services\]/\[vpn\]/g' luci-app-openclash/luasrc/model/cbi/openclash/*.lua
sed -i "s/'services'/'vpn'/g" luci-app-openclash/luasrc/view/openclash/*.htm
sed -i 's/\"services\"/\"vpn\"/g' luci-app-openclash/luasrc/view/openclash/*.htm
sed -i 's/\/services\//\/vpn\//g' luci-app-openclash/luasrc/view/openclash/*.htm
sed -i 's/\[services\]/\[vpn\]/g' luci-app-openclash/luasrc/view/openclash/*.htm
sed -i "s/'services'/'vpn'/g" luci-app-openclash/luasrc/*.lua
sed -i 's/\"services\"/\"vpn\"/g' luci-app-openclash/luasrc/*.lua
sed -i 's/\/services\//\/vpn\//g' luci-app-openclash/luasrc/*.lua
sed -i 's/\[services\]/\[vpn\]/g' luci-app-openclash/luasrc/*.lua
popd
pushd package/gfw/luci-app-openclash/tools/po2lmo
make && sudo make install
popd

# Extra package
rm -rf feeds/packages/net/ddns-scripts
rm -rf feeds/packages/utils/syncthing
rm -rf feeds/luci/applications/luci-app-diskman
rm -rf feeds/luci/applications/luci-app-hd-idle
mkdir package/lc-sub
pushd package/lc-sub
svn co https://github.com/immortalwrt/packages/tree/openwrt-18.06/net/ddns-scripts
svn co https://github.com/immortalwrt/packages/tree/openwrt-18.06/net/gowebdav
svn co https://github.com/immortalwrt/packages/tree/openwrt-18.06/utils/filebrowser
svn co https://github.com/immortalwrt/packages/tree/openwrt-18.06/utils/syncthing
svn co https://github.com/immortalwrt/luci/tree/master/applications/luci-app-diskman
svn co https://github.com/immortalwrt/luci/tree/master/applications/luci-app-filebrowser
svn co https://github.com/immortalwrt/luci/tree/master/applications/luci-app-gowebdav
svn co https://github.com/immortalwrt/luci/tree/master/applications/luci-app-hd-idle
svn co https://github.com/immortalwrt/luci/tree/master/applications/luci-app-syncthing
popd

# Theme
rm -rf feeds/luci/themes/luci-theme-material
rm -rf feeds/luci/themes/luci-theme-argon
pushd package/lc-sub
git clone https://github.com/jerrykuku/luci-app-argon-config.git
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git
git clone -b 18.06 https://github.com/kiddin9/luci-theme-edge.git
svn co https://github.com/immortalwrt/luci/tree/openwrt-18.06/themes/luci-theme-darkmatter
svn co https://github.com/immortalwrt/luci/tree/openwrt-18.06/themes/luci-theme-material
popd

# Modify Makefile
find package/lc-sub/*/ -maxdepth 2 -path "*/Makefile" | xargs -i sed -i 's/include\ \.\.\/\.\.\/luci\.mk/include \$(TOPDIR)\/feeds\/luci\/luci\.mk/g' {}
find package/lc-sub/*/ -maxdepth 2 -path "*/Makefile" | xargs -i sed -i 's/include\ \.\.\/\.\.\/lang\/golang\/golang\-package\.mk/include \$(TOPDIR)\/feeds\/packages\/lang\/golang\/golang\-package\.mk/g' {}

# Modify Menu
sed -i "s/'services'/'nas'/g" feeds/luci/applications/luci-app-aria2/luasrc/controller/*.lua
sed -i 's/\"services\"/\"nas\"/g' feeds/luci/applications/luci-app-aria2/luasrc/controller/*.lua
sed -i 's/\/services\//\/nas\//g' feeds/luci/applications/luci-app-aria2/luasrc/controller/*.lua
sed -i 's/\[services\]/\[nas\]/g' feeds/luci/applications/luci-app-aria2/luasrc/controller/*.lua
sed -i "s/'services'/'nas'/g" feeds/luci/applications/luci-app-aria2/luasrc/model/cbi/*.lua
sed -i 's/\"services\"/\"nas\"/g' feeds/luci/applications/luci-app-aria2/luasrc/model/cbi/*.lua
sed -i 's/\/services\//\/nas\//g' feeds/luci/applications/luci-app-aria2/luasrc/model/cbi/*.lua
sed -i 's/\[services\]/\[nas\]/g' feeds/luci/applications/luci-app-aria2/luasrc/model/cbi/*.lua
sed -i "s/'services'/'nas'/g" feeds/luci/applications/luci-app-aria2/luasrc/view/aria2/*.htm
sed -i 's/\"services\"/\"nas\"/g' feeds/luci/applications/luci-app-aria2/luasrc/view/aria2/*.htm
sed -i 's/\/services\//\/nas\//g' feeds/luci/applications/luci-app-aria2/luasrc/view/aria2/*.htm
sed -i 's/\[services\]/\[nas\]/g' feeds/luci/applications/luci-app-aria2/luasrc/view/aria2/*.htm
sed -i "s/'services'/'nas'/g" feeds/luci/applications/luci-app-samba4/luasrc/controller/*.lua
sed -i 's/\"services\"/\"nas\"/g' feeds/luci/applications/luci-app-samba4/luasrc/controller/*.lua
sed -i 's/\/services\//\/nas\//g' feeds/luci/applications/luci-app-samba4/luasrc/controller/*.lua
sed -i 's/\[services\]/\[nas\]/g' feeds/luci/applications/luci-app-samba4/luasrc/controller/*.lua
sed -i "s/'services'/'nas'/g" feeds/luci/applications/luci-app-samba4/luasrc/model/cbi/*.lua
sed -i 's/\"services\"/\"nas\"/g' feeds/luci/applications/luci-app-samba4/luasrc/model/cbi/*.lua
sed -i 's/\/services\//\/nas\//g' feeds/luci/applications/luci-app-samba4/luasrc/model/cbi/*.lua
sed -i 's/\[services\]/\[nas\]/g' feeds/luci/applications/luci-app-samba4/luasrc/model/cbi/*.lua
sed -i "s/'services'/'vpn'/g" feeds/luci/applications/luci-app-frpc/luasrc/controller/*.lua
sed -i 's/\"services\"/\"vpn\"/g' feeds/luci/applications/luci-app-frpc/luasrc/controller/*.lua
sed -i 's/\/services\//\/vpn\//g' feeds/luci/applications/luci-app-frpc/luasrc/controller/*.lua
sed -i 's/\[services\]/\[vpn\]/g' feeds/luci/applications/luci-app-frpc/luasrc/controller/*.lua
sed -i "s/'services'/'vpn'/g" feeds/luci/applications/luci-app-frpc/luasrc/model/cbi/frp/*.lua
sed -i 's/\"services\"/\"vpn\"/g' feeds/luci/applications/luci-app-frpc/luasrc/model/cbi/frp/*.lua
sed -i 's/\/services\//\/vpn\//g' feeds/luci/applications/luci-app-frpc/luasrc/model/cbi/frp/*.lua
sed -i 's/\[services\]/\[vpn\]/g' feeds/luci/applications/luci-app-frpc/luasrc/model/cbi/frp/*.lua
sed -i "s/'services'/'vpn'/g" feeds/luci/applications/luci-app-frpc/luasrc/view/frp/*.htm
sed -i 's/\"services\"/\"vpn\"/g' feeds/luci/applications/luci-app-frpc/luasrc/view/frp/*.htm
sed -i 's/\/services\//\/vpn\//g' feeds/luci/applications/luci-app-frpc/luasrc/view/frp/*.htm
sed -i 's/\[services\]/\[vpn\]/g' feeds/luci/applications/luci-app-frpc/luasrc/view/frp/*.htm
sed -i "s/'services'/'vpn'/g" feeds/luci/applications/luci-app-frps/luasrc/controller/*.lua
sed -i 's/\"services\"/\"vpn\"/g' feeds/luci/applications/luci-app-frps/luasrc/controller/*.lua
sed -i 's/\/services\//\/vpn\//g' feeds/luci/applications/luci-app-frps/luasrc/controller/*.lua
sed -i 's/\[services\]/\[vpn\]/g' feeds/luci/applications/luci-app-frps/luasrc/controller/*.lua
sed -i "s/'services'/'vpn'/g" feeds/luci/applications/luci-app-frps/luasrc/model/cbi/frps/*.lua
sed -i 's/\"services\"/\"vpn\"/g' feeds/luci/applications/luci-app-frps/luasrc/model/cbi/frps/*.lua
sed -i 's/\/services\//\/vpn\//g' feeds/luci/applications/luci-app-frps/luasrc/model/cbi/frps/*.lua
sed -i 's/\[services\]/\[vpn\]/g' feeds/luci/applications/luci-app-frps/luasrc/model/cbi/frps/*.lua
sed -i "s/'services'/'vpn'/g" feeds/luci/applications/luci-app-frps/luasrc/view/frps/*.htm
sed -i 's/\"services\"/\"vpn\"/g' feeds/luci/applications/luci-app-frps/luasrc/view/frps/*.htm
sed -i 's/\/services\//\/vpn\//g' feeds/luci/applications/luci-app-frps/luasrc/view/frps/*.htm
sed -i 's/\[services\]/\[vpn\]/g' feeds/luci/applications/luci-app-frps/luasrc/view/frps/*.htm
sed -i "s/'services'/'vpn'/g" feeds/luci/applications/luci-app-v2ray-server/luasrc/controller/*.lua
sed -i 's/\"services\"/\"vpn\"/g' feeds/luci/applications/luci-app-v2ray-server/luasrc/controller/*.lua
sed -i 's/\/services\//\/vpn\//g' feeds/luci/applications/luci-app-v2ray-server/luasrc/controller/*.lua
sed -i 's/\[services\]/\[vpn\]/g' feeds/luci/applications/luci-app-v2ray-server/luasrc/controller/*.lua
sed -i "s/'services'/'vpn'/g" feeds/luci/applications/luci-app-v2ray-server/luasrc/model/cbi/v2ray_server/*/*.lua
sed -i 's/\"services\"/\"vpn\"/g' feeds/luci/applications/luci-app-v2ray-server/luasrc/model/cbi/v2ray_server/*/*.lua
sed -i 's/\/services\//\/vpn\//g' feeds/luci/applications/luci-app-v2ray-server/luasrc/model/cbi/v2ray_server/*/*.lua
sed -i 's/\[services\]/\[vpn\]/g' feeds/luci/applications/luci-app-v2ray-server/luasrc/model/cbi/v2ray_server/*/*.lua
sed -i "s/'services'/'vpn'/g" feeds/luci/applications/luci-app-v2ray-server/luasrc/model/cbi/v2ray_server/*.lua
sed -i 's/\"services\"/\"vpn\"/g' feeds/luci/applications/luci-app-v2ray-server/luasrc/model/cbi/v2ray_server/*.lua
sed -i 's/\/services\//\/vpn\//g' feeds/luci/applications/luci-app-v2ray-server/luasrc/model/cbi/v2ray_server/*.lua
sed -i 's/\[services\]/\[vpn\]/g' feeds/luci/applications/luci-app-v2ray-server/luasrc/model/cbi/v2ray_server/*.lua
sed -i "s/'services'/'vpn'/g" feeds/luci/applications/luci-app-v2ray-server/luasrc/view/v2ray_server/*.htm
sed -i 's/\"services\"/\"vpn\"/g' feeds/luci/applications/luci-app-v2ray-server/luasrc/view/v2ray_server/*.htm
sed -i 's/\/services\//\/vpn\//g' feeds/luci/applications/luci-app-v2ray-server/luasrc/view/v2ray_server/*.htm
sed -i 's/\[services\]/\[vpn\]/g' feeds/luci/applications/luci-app-v2ray-server/luasrc/view/v2ray_server/*.htm

# HotFix
