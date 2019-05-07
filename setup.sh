# 安装基础工具
echo "\n---------- 安装基础工具 ----------\n"
apt update
apt install -y sudo vim curl wget git

# 安装 zsh
echo "\n---------- 安装 zsh ----------\n"
sudo apt install -y zsh
echo "\n---------- OK ----------\n"

# 安装 Oh My Zsh
echo "\n---------- 安装 Oh My Zsh ----------\n"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sed '/\s*env\s\s*zsh\s*/d')" \

echo "\n---------- OK ----------\n"

# 安装 zsh 插件
echo "\n---------- 安装 zsh-autosuggestions 插件 ----------\n"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "\n---------- OK ----------\n"

echo "\n---------- 安装 zsh-syntax-highlighting 插件 ----------\n"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo "\n---------- OK ----------\n"

echo "\n---------- 安装 zsh-history-substring-search 插件 ----------\n"
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
echo "\n---------- OK ----------\n"

echo "\n---------- 向 ~/.zshrc 文件追加配置 ----------\n"
echo "source ~/.local/config/setup-scripts/.zshrc" >> ~/.zshrc
echo "\n---------- OK ----------\n"

#echo "\n---------- 重新加载 .zshrc 文件 ----------\n"
#source ~/.zshrc
#echo "\n---------- OK ----------\n"

echo "\n---------- 初始化完成，切换到 zsh ----------\n"
read -p "按 Enter 进入 zsh :" var
env zsh -l

