#!/bin/sh

PRINT() {
	echo ""
	echo "---------- "$1" ----------"
	echo ""
}

# 安装基础工具
PRINT "安装基础工具"
apt update
apt install -y sudo vim curl wget git

# 克隆脚本仓库
PRINT "克隆脚本"
git clone https://github.com/feel-think/setup-scripts.git ~/.local/config/setup-scripts

# 运行 setup 脚本
sh ~/.local/config/setup-scripts/setup.sh