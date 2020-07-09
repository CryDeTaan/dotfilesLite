# let jump around using fzf
unalias z 2> /dev/null
z() {
    [ $# -gt 0 ] && _z "$*" && return
    cd "$(_z -l 2>&1 | fzf --height 40% --nth 2.. --reverse --inline-info +s --tac --query "${*##-* }" | sed 's/^[0-9,.]* *//')"
}

weather() {
    curl -s wttr.in/"$@"\?format\=v2 | grep -v 'New fea' | grep -v Foll
}
