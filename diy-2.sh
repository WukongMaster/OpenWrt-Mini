# 此脚本用处是：定制个性化参数
#============================================================================================


# 设置默认主题
sed -i 's/bootstrap/opentomcat/g' ./feeds/luci/collections/luci/Makefile

# 设置管理地址
sed -i 's/192.168.1.1/192.168.2.100/g' package/base-files/files/bin/config_generate

# 设置密码为空
sed -i '/CYXluq4wUazHjmCDBCqXF/d' package/lean/default-settings/files/zzz-default-settings

# 修改时间格式
sed -i 's/os.date()/os.date("%Y-%m-%d %H:%M:%S")/g' package/lean/autocore/files/*/index.htm

# 添加固件日期
sed -i 's/IMG_PREFIX:=/IMG_PREFIX:=$(BUILD_DATE_PREFIX)-/g' ./include/image.mk
sed -i '/DTS_DIR:=$(LINUX_DIR)/a\BUILD_DATE_PREFIX := $(shell date +'%F')' ./include/image.mk

# 修正硬件信息
sed -i 's/${g}.*/${a}${b}${c}${d}${e}${f}${hydrid}/g' package/lean/autocore/files/x86/autocore
