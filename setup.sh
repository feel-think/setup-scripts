# 安装基础工具
echo "\n---------- 安装基础工具 ----------\n"
apt update
apt install -y sudo vim curl wget git

# 配置 vim 为 git 的默认编辑器
git config --global core.editor vim

# 安装 zsh
echo "\n---------- 安装 zsh ----------\n"
sudo apt install -y zsh

# 安装 Oh My Zsh
echo "\n---------- 安装 Oh My Zsh ----------\n"
export RUNZSH=no
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# 安装 zsh 插件
echo "\n---------- 安装 zsh-autosuggestions 插件 ----------\n"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "\n---------- 安装 zsh-syntax-highlighting 插件 ----------\n"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "\n---------- 安装 zsh-history-substring-search 插件 ----------\n"
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search

echo "source ~/.local/config/setup-scripts/zshrc" >> ~/.zshrc

# 安装 tmux
echo "\n---------- 安装 tmux ----------\n"
sudo apt install -y tmux

# 安装 tpm
echo "\n---------- 安装 tmux 插件管理器 tpm ----------\n"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "source ~/.local/config/setup-scripts/tmux.conf" >> ~/.tmux.conf

# 安装 tmux 插件
echo "\n---------- 安装 tmux 插件 ----------\n"
sh ~/.tmux/plugins/tpm/bin/install_plugins

echo "source ~/.local/config/setup-scripts/vimrc" >> ~/.vimrc

echo "\n---------- 初始化完成，切换到 zsh ----------\n"
read -p "按 Enter 进入新环境:" var
exec zsh -l
