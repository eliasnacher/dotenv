echo "Creating DotEnv SymLinks"

cp -r . /tmp/dotenv_tmp
rm -r -f ~/.config/dotenv
mv /tmp/dotenv_tmp ~/.config/dotenv


rm -rf ~/.config/nvim
ln -s ~/.config/dotenv/nvim ~/.config

rm -f ~/.config/starship.toml
ln -s ~/.config/dotenv/starship.toml ~/.config
