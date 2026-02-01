[[ $- != *i* ]] && return

alias qwfp='niri-session'
alias :q='exit'
alias la='ls --color=auto -lah'
alias lb='lsblk -n'
alias lu='lsusb'
alias grep='grep --color=auto'
PS1='[\u@\h:\W]\$ '

#==========================
# yazi
function fm() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}
# yazi end

fastfetch

# pnpm
export PNPM_HOME="/home/shins0u/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
