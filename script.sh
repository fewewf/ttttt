#!/bin/bash


# Add luci-app-adguardhome
# git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package-temp/luci-app-adguardhome
# mv -f package-temp/luci-app-adguardhome package/lean/
# rm -rf package-temp
#git clone https://github.com/kenzok8/small-package.git theme-temp/small-package
#mv -f theme-temp/small-package package/lean/
#rm -rf theme-temp
#sed -i '$a src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default
#rm -rf feeds/smpackage/{base-files,dnsmasq,firewall*,fullconenat,libnftnl,nftables,ppp,opkg,ucl,upx,vsftpd*,miniupnpd-iptables,wireless-regdb}
# Add luci-theme-opentomcat
default_theme='Argon'
sed -i "s/bootstrap/$default_theme/g" feeds/luci/modules/luci-base/root/etc/config/luci

# sed -i "s/bootstrap/$default_theme/g" feeds/luci/modules/luci-base/root/etc/config/luci
sed -i 's/192.168.1.1/192.168.1.80/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/192.168.1.80/g' package/base-files/luci2/bin/config_generate
sed -i 's/192.168.1.1/192.168.1.80/g' package/base-files/Makefile
sed -i 's/192.168.1.1/192.168.1.80/g' package/base-files/image-config.in
git clone https://github.com/dsddr02/cdnspeedtest package/cdnspeedtest
git clone https://github.com/dsddr02/peed11 package/luci-app-cloudflarespeedtest

# Add luci-app-amlogic
git clone https://github.com/ophub/luci-app-amlogic.git  package-temp/luci-app-amlogic
mv -f package-temp/luci-app-amlogic/luci-app-amlogic package/lean/
rm -rf package-temp
#git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages
git clone https://github.com/kenzok8/small-package package/small-package
git clone https://github.com/xiaorouji/openwrt-passwall-packages package/passwall-packages 
# sed -i '$a src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default
rm -rf package/small-package/luci-app-openvpn-server
rm -rf package/small-package/openvpn-easy-rsa-whisky
rm -rf package/small-package/luci-app-wrtbwmon
rm -rf package/small-package/wrtbwmon
rm -rf package/small-package/luci-app-koolproxy
rm -rf package/small-package/luci-app-godproxy
rm -rf package/small-package/luci-app-cloudflarespeedtest
# rm -rf package/small-package/nftables
rm -rf feeds/packages/net/v2ray-geodata
rm -rf feeds/luci/themes/luci-theme-argon
rm -rf feeds/luci/applications/luci-app-argon-config
rm -rf feeds/packages/net/mosdns
rm -rf feeds/packages/utils/v2dat
rm -rf feeds/luci/applications/luci-app-mosdns
rm -rf package/small-package/luci-app-unblockneteasemusic
rm -rf package/small-package/upx-static
rm -rf package/small-package/upx
#rm -rf package/small-package/firewall*
#rm -rf package/small-package/opkg
rm -rf package/small-package/base-files
rm -rf package/small-package/luci-app-bandwidthd
rm -rf package/small-package/luci-app-bypass
rm -rf package/small-package/luci-app-dogcom
rm -rf package/small-package/luci-app-gowebdav
rm -rf package/small-package/luci-app-nginx-pingos
rm -rf package/small-package/luci-app-ssr-plus
rm -rf package/small-package/luci-app-onliner
rm -rf package/small-package/natflow
# rm -rf package/small-package/luci-lib-taskd

rm -rf package/feeds/packages/aliyundrive-webdav
rm -rf feeds/packages/multimedia/aliyundrive-webdav
rm -rf package/feeds/packages/perl-xml-parser
rm -rf package/feeds/packages/xfsprogs
