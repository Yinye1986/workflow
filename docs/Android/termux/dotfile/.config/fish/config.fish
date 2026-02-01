fastfetch
set -g fish_greeting ""
if status is-interactive
    # cmd
else
    # cmd
end

# 系统操作
#======================

# 终端shell操作
#==============
alias :q="exit"

alias ll="ls -lh"
alias la="ls -lah"

# TUI工具
#==================================================================================
function fm
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        cd -- "$cwd"
    end
    rm -f -- "$tmp"
end

# 快捷指令
#===================================================================================
alias bak='bash /sdcard/AAA/dotfile/.script/bak.sh'

# 多媒体托管服务
#==============================================================
alias clbin='curl -F "clbin=<-" https://clbin.com'
function u4d
    curl -F "file=@-;filename=.$argv[1]" https://x0.at/
end
