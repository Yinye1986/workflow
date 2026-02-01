fastfetch

set fish_greeting

# 系统操作
#======================
alias sn="shutdown now"

# 终端shell操作
#==============
# alias !!=""
alias :q="exit"
alias la="ls -lah"
alias lb="lsblk"
alias lu="lsusb"

# 工具别名
#==================================================================================
alias lg="lazygit"
alias hx='helix'
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
alias pada='/const/workflow/homeDir/dotLocal/scripts/scrcpy/pada.sh'
alias padv='/const/workflow/homeDir/dotLocal/scripts/scrcpy/padv.sh'
alias padc='/const/workflow/homeDir/dotLocal/scripts/scrcpy/padc.sh'
alias padx='pkill scrcpy & adb kill-server'
alias bak='/const/workflow/homeDir/dotLocal/scripts/git/bak.sh'
alias updateGithubHosts='/const/workflow/homeDir/dotLocal/scripts/git/updateGithubhost.sh'
# alias wxit="bash /const/workflow/homeDir/dotScript/wxit.sh"

# 多媒体托管服务
#==============================================================
alias clbin='curl -F "clbin=<-" https://clbin.com'
function u4d
    curl -F "file=@-;filename=.$argv[1]" https://x0.at/
end

# stm32开发
#=======================================================
# alias e='sudo st-flash erase'
# alias w='sudo st-flash write build/main.bin 0x8000000'

# whose
function whose
    type -p $argv[1] | xargs pacman -Qo
end
