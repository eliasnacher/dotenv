# Aliases
alias nv="nvim"
alias ga="git add ."
alias gd="git diff"
alias gc="git commit --no-verify"
alias gca="git commit --amend --no-edit --no-verify"
alias gcap="git commit --amend --no-edit --no-verify; git push --force"
alias gp="git push"
alias gpf="git push --force"
alias grh="git reset --hard"
alias ms="make start"
alias mc="make clean"

#Init starship
eval "$(starship init zsh)"

# Init Tmux
if [ "$TMUX" = "" ]; then tmux; exit; fi


