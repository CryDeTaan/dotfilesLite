# Command Aliases
# This will be used as aliases file

# Simple aliases

alias dotfiles="bash <(curl -fsSL https://raw.githubusercontent.com/crydetaan/dotfilesLite/master/dotfiles)"
alias dotconf="vim ~/.dotfiles/dotfiles"

alias :q="exit"

alias ve="vim ~/.dotfiles/rc/vimrc"

alias doit='sudo $(fc -ln -1)'
alias ss="pngpaste /tmp/pngpaste.png; curl -s -F sunset=86400 -F c=@- -F p=1 https://ptpb.pw/ < /tmp/pngpaste.png | egrep -o 'https:\/\/ptpb.pw\/.*' | pbcopy; rm /tmp/pngpaste.png"
alias weather="curl -s wttr.in/~Stellenbosch | grep -v 'New fea' | grep -v Foll"
mcd () { mkdir -p "$@" && cd "$@"; }

# exa Aliais
alias tree="exa --tree --level=4 --long"
alias ls="exa --long --header --git"
alias ll="exa --all --all --long --header --git"

alias cat="bat"

