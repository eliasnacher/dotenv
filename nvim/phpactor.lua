local phpactor_installed = os.execute("phpactor --version > /dev/null 2>&1")

if phpactor_installed ~= 0 then
    print("Instalando PHPactor...")
    os.execute("composer global require phpactor/phpactor > /dev/null 2>&1")
    print("PHPactor instalado correctamente.")
end
