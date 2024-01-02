# EdwardRF change to vi mode
set -o vi


# Add some aliases
alias get_idf='. $HOME/esp/esp-idf/export.sh'
alias tmux='TERM=xterm-256color tmux'
alias vim="nvim"

# Start direnv
eval "$(direnv hook bash)"
