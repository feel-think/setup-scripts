# 安装基础工具
echo "\n---------- 安装基础工具 ----------\n"
apt update
apt install -y sudo vim curl wget git

# 克隆脚本仓库
git clone https://github.com/feel-think/setup-scripts.git ~/.local/config/setup-scripts

# 运行 setup 脚本
sh ~/.local/config/setup-scripts/setup.sh