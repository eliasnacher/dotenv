echo "Creating DotEnv SymLinks"

if ! command -v <nvim> &> /dev/null
then
    sudo apt install nvim
fi
if ! command -v <zsh> &> /dev/null
then
    sudo apt install zsh
fi
if ! command -v <startship> &> /dev/null
then
    curl -sS https://starship.rs/install.sh | sh
fi

cp -r . /tmp/dotfiles_tmp
rm -r -f ~/.config/dotfiles
mv /tmp/dotfiles_tmp ~/.config/dotfiles


rm -rf ~/.config/nvim
ln -s ~/.config/dotfiles/nvim ~/.config

rm -f ~/.config/starship.toml
ln -s ~/.config/dotfiles/starship.toml ~/.config

rm -f ~/.tmux.conf
ln -s ~/.config/dotfiles/.tmux.conf ~/

rm -f ~/.zshrc
ln -s ~/.config/dotfiles/.zshrc ~/
