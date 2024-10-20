# 此脚本用处是：定制个性化参数
#============================================================================================

rm -rf feeds/packages/lang/golang
git clone https://github.com/kenzok8/golang feeds/packages/lang/golang


# 1-设置管理地址
# sed -i 's/192.168.1.1/192.168.2.100/g' package/base-files/files/bin/config_generate

# 2-设置密码为空
# sed -i '/CYXluq4wUazHjmCDBCqXF/d' package/lean/default-settings/files/zzz-default-settings
