# Command Aliases
# This will be used as aliases file

# Simple aliases

alias dotfiles="bash <(curl -fsSL https://raw.githubusercontent.com/crydetaan/dotfiles2.0/master/dotfiles)"
alias dotconf="vim ~/.dotfiles/dotfiles"

alias :q="exit"

alias ve="vim ~/.dotfiles/rc/vimrc"

alias doit='sudo $(fc -ln -1)'
alias ss="pngpaste /tmp/pngpaste.png; curl -s -F sunset=86400 -F c=@- -F p=1 https://ptpb.pw/ < /tmp/pngpaste.png | egrep -o 'https:\/\/ptpb.pw\/.*' | pbcopy; rm /tmp/pngpaste.png"
alias weather="curl -s wttr.in/~Stellenbosch | grep -v 'New fea' | grep -v Foll"
mcd () { mkdir -p "$@" && cd "$@"; }
