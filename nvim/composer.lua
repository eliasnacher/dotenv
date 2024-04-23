local composer_installed = os.execute("composer --version > /dev/null 2>&1")

if composer_installed ~= 0 then
    print("Instalando Composer...")
    os.execute("php -r \"copy('https://getcomposer.org/installer', 'composer-setup.php');\"")
    os.execute("php composer-setup.php")
    os.execute("php -r \"unlink('composer-setup.php');\"")
    os.execute("mv composer.phar /usr/local/bin/composer")
    print("Composer instalado correctamente.")
end
