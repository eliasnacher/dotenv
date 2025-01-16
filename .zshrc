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
alias mu="make up-dev service=\"lms-api* engine-api* training-api* playlist-api* lms-learner-spa-* lms-admin-spa-* drive-api-*\""
alias muw="make up-dev service=\"lms-api* engine-api* training-api* playlist-api* drive-api-*\""
alias mfa="make up-dev service=\"lms-admin-spa-*\""
alias mfl="make up-dev service=\"lms-learner-spa-*\""
alias mc="make down-clean-dev"
alias ms="make down-dev"
alias mt="f() { echo make phpcs-strict target_branch=origin/lms-common-api/release/$1};f"
alias mr="ms;mu"

#Init starship
eval "$(starship init zsh)"

# Init Tmux
if [ "$TMUX" = "" ]; then tmux; exit; fi

# BEGIN SNIPPET: Platform.sh CLI configuration
HOME=${HOME:-'/home/eliasnacher'}
export PATH="$HOME/"'.platformsh/bin':"$PATH"
if [ -f "$HOME/"'.platformsh/shell-config.rc' ]; then . "$HOME/"'.platformsh/shell-config.rc'; fi # END SNIPPET
export PATH="$PATH:$HOME/.config/composer/vendor/bin"
