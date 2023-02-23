echo "Creating DotEnv SymLinks"

cp -r . /tmp/dotfiles_tmp
rm -r -f ~/.config/dotfiles
mv /tmp/dotfiles_tmp ~/.config/dotfiles


rm -rf ~/.config/nvim
ln -s ~/.config/dotfiles/nvim ~/.config

rm -f ~/.config/starship.toml
ln -s ~/.config/dotfiles/starship.toml ~/.config

rm -f ~/.config/tmux
ln -s ~/.config/dotfiles/tmux ~/.config
