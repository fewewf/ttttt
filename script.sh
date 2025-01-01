#!/bin/bash
cd openwrt

# Add luci-app-adguardhome
# git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package-temp/luci-app-adguardhome
# mv -f package-temp/luci-app-adguardhome package/lean/
# rm -rf package-temp
# git clone https://github.com/kenzok8/small-package.git theme-temp/small-package
# mv -f theme-temp/small-package package/lean/
#rm -rf theme-temp
sed -i '$a src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default
rm -rf feeds/smpackage/{base-files,dnsmasq,firewall*,fullconenat,libnftnl,nftables,ppp,opkg,ucl,upx,vsftpd*,miniupnpd-iptables,wireless-regdb}
# Add luci-theme-opentomcat
default_theme='Argon'
sed -i "s/bootstrap/$default_theme/g" feeds/luci/modules/luci-base/root/etc/config/luci

# sed -i "s/bootstrap/$default_theme/g" feeds/luci/modules/luci-base/root/etc/config/luci
sed -i 's/192.168.1.1/192.168.110.247/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/192.168.110.247/g' package/base-files/luci2/bin/config_generate
sed -i 's/192.168.1.1/192.168.110.247/g' package/base-files/Makefile
sed -i 's/192.168.1.1/192.168.110.247/g' package/base-files/image-config.in

# Add luci-app-amlogic
git clone https://github.com/ophub/luci-app-amlogic.git  package-temp/luci-app-amlogic
mv -f package-temp/luci-app-amlogic/luci-app-amlogic package/lean/
rm -rf package-temp
git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages
git clone https://github.com/kenzok8/small-package package/small-package
git clone https://github.com/xiaorouji/openwrt-passwall-packages package/passwall-packages 
sed -i '$a src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default
