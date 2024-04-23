local plug_path = vim.fn.expand("$HOME/.config/nvim/pluggins/")

if vim.fn.empty(vim.fn.glob(plug_path)) > 0 then
    vim.cmd('!curl -fLo ' .. plug_path ..
                'installer --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
end

local PlugInstall = vim.fn['plug#']
local call = vim.call
local cmd = vim.cmd

local function PlugRequire(required_packages)
    for _, package in ipairs(required_packages) do
        if type(package) == "string" then
            PlugInstall(package)
        elseif type(package) == "table" then
            PlugRequire(package)
        end
    end
end

local function PlugPackages(required_packages)
    call('plug#begin', plug_path)
    PlugRequire(required_packages)
    call'plug#end'
    cmd'PlugInstall --sync | :q'
end

return PlugPackages
