# DIY-1 此脚本功能：添加外部插件
# ===============================================================================================

# 1-添加软件仓库
echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default
echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default

# 2-添加关机插件
git clone https://github.com/WukongMaster/luci-app-poweroff.git package/luci-app-poweroff

# 3-添加系统主题
git clone https://github.com/WukongMaster/luci-theme-opentomcat.git package/luci-theme-opentomcat
