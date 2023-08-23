# Aliases
alias nv="nvim"
alias ga="git add"
alias gd="git diff"
alias gc="git commit --no-verify"
alias gca="git commit --amend --no-edit --no-verify"
alias gcap="git commit --amend --no-edit --no-verify; git push --force"
alias gp="git push"
alias gpf="git push --force"
alias grh="git reset --hard"
alias ms="make up-dev service=\"lms-api-web lms-api-commandworker lms-api-eventworker engine-api-web engine-api-workercloud engine-api-workerplay engine-api-queueworker training-api-web training-api-workercloud training-api-workerplay training-api-workercheckvalidation playlist-api-web playlist-api-eventworker playlist-api-commandworker\""
alias mc="make down-clean-dev"

#Init starship
eval "$(starship init zsh)"

# Init Tmux
if [ "$TMUX" = "" ]; then tmux; exit; fi

# BEGIN SNIPPET: Platform.sh CLI configuration
HOME=${HOME:-'/home/eliasnacher'}
export PATH="$HOME/"'.platformsh/bin':"$PATH"
if [ -f "$HOME/"'.platformsh/shell-config.rc' ]; then . "$HOME/"'.platformsh/shell-config.rc'; fi # END SNIPPET
