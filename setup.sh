#!/bin/sh

. ./tools.sh

# 配置 vim 为 git 的默认编辑器
git config --global core.editor vim

# 安装 zsh
PRINT "安装 zsh"
sudo apt install -y zsh

# 安装 Oh My Zsh
PRINT "安装 Oh My Zsh"
export RUNZSH=no # 安装完成后不立即切换至 zsh
# echo | 可以在 oh-my-zsh 安装过程中自动按回车
echo | sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# 安装 zsh 插件
PRINT "安装 zsh-autosuggestions 插件"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

PRINT "安装 zsh-syntax-highlighting 插件"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

PRINT "安装 zsh-history-substring-search 插件"
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search

echo "source ~/.local/config/setup-scripts/zshrc" >> ~/.zshrc

# 安装 tmux
PRINT "安装 tmux"
sudo apt install -y tmux

# 安装 tpm
PRINT "安装 tmux 插件管理器 tpm"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "source ~/.local/config/setup-scripts/tmux.conf" >> ~/.tmux.conf

# 安装 tmux 插件
PRINT "安装 tmux 插件"
sh ~/.tmux/plugins/tpm/bin/install_plugins

# 配置 vim
echo "source ~/.local/config/setup-scripts/vimrc" >> ~/.vimrc

PRINT "初始化完成，切换到 zsh"
read -p "按 Enter 进入新环境:" var
exec zsh -l
