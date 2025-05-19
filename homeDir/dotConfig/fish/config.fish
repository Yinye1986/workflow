cowsay -e @@ "I love Linux"
set -g fish_greeting ""
if status is-interactive
    # cmd
else
    # cmd
end

# My alias
alias :q="exit"

alias ll="ls -lh"
alias la="ls -lah"
alias lld="lsblk"
alias llu="lsusb"
alias ff="fastfetch"

alias sn="shutdown now"

alias bak='bash /const/workflow/homeDir/dotScript/repoBackup.sh'
alias updateGithubHosts='bash /const/workflow/homeDir/dotScript/updateGithubHost.sh'
alias wxit="bash /const/workflow/homeDir/dotScript/wxit.sh"

alias ca='sudo st-flash erase'
alias xie='sudo st-flash write build/main.bin 0x8000000'
alias cl='make clean'
alias mk='make'
alias tiao='sudo openocd -f stlink.cfg'
alias done='mk & ca & xie'
function fm
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		cd -- "$cwd"
	end
	rm -f -- "$tmp"
end
function lf --wraps="lf" --description="lf - Terminal file manager (changing directory on exit)"
    # `command` is needed in case `lfcd` is aliased to `lf`.
    # Quotes will cause `cd` to not change directory if `lf` prints nothing to stdout due to an error.
    cd "$(command lf -print-last-dir $argv)"
end

# My Apps
# alias d='go run main.go --alac-max 192000 --select'
# thefuck --alias | source
