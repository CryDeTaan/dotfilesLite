# Command Aliases
# This will be used as aliases file

# Simple aliases

alias dotfiles="bash <(curl -fsSL https://raw.githubusercontent.com/crydetaan/dotfilesLite/master/dotfiles)"
alias dotconf="vim ~/.dotfiles/dotfiles"

alias :q="exit"

alias cprompt='printf "\e[38;5;237m------------------------------------------------------------\n" && PS1="$FG[075]~ $FG[046]» %{$reset_color%}"'
alias nprompt='source $HOME/.dotfiles/config/zsh/oh-my-zsh/themes/crydetaan.zsh-theme'

alias ve="vim ~/.dotfiles/rc/vimrc"

alias doit='sudo $(fc -ln -1)'
alias ss="pngpaste /tmp/pngpaste.png; curl -s -F sunset=86400 -F c=@- -F p=1 https://ptpb.pw/ < /tmp/pngpaste.png | egrep -o 'https:\/\/ptpb.pw\/.*' | pbcopy; rm /tmp/pngpaste.png"
mcd () { mkdir -p "$@" && cd "$@"; }

# exa Aliases
if hash exa 2>/dev/null; then
    alias tree="exa --tree --level=4 --long"
    alias ls="exa --long --header --git"
    alias ll="exa --all --all --long --header --git"
fi

hash bat 2>/dev/null && alias cat="bat"

# Laravel Aliases
alias artisan='php artisan'
alias tinker='php artisan tinker'
