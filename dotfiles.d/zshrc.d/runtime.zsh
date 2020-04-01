# Commands
#
# Commands specified here run on shell startup

# Run neofetch if available!
if hash neofetch 2>/dev/null && [[ $(who | wc -l) -eq 2 ]]; then
    echo
    neofetch \
        --colors 29 29 6 8 2 250 \
        --color_blocks off \
        --memory_display bar --bar_colors 1 2 --bar_char = - --bar_border off
fi

# Runs iterm's shell integration script if present
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh" || true
