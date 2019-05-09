#!/bin/bash

tool_commands=(
    'ag'
    'mycli'
    'fzf'
)

declare -A tool_names_for_apt=(
    ["ag"]="silversearcher-ag"
    ["mycli"]="mycli"
    ["fzf"]="fzf"
)

for tool in ${tool_commands[@]}; do
    if command -v $tool >/dev/null 2>&1; then
        #echo "命令 "${tool_names_for_apt[$tool]}" 存在"
        :
    else
        #echo "命令 "${tool_names_for_apt[$tool]}" 不存在"
        tools_to_install=$tools_to_install" "${tool_names_for_apt[$tool]}
    fi
done

#echo "待安装的工具：{"$tools_to_install"}"

if [ -n "$tools_to_install" ]; then
    sudo apt install -y $tools_to_install
fi
