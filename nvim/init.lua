PlugPackages = dofile(vim.fn.expand("$HOME/.config/nvim/plug.lua"))
KeyBind = dofile(vim.fn.expand("$HOME/.config/nvim/keybind.lua"))

dofile(vim.fn.expand("$HOME/.config/nvim/composer.lua"))
dofile(vim.fn.expand("$HOME/.config/nvim/phpactor.lua"))

PlugPackages({
    {
        'nvim-neo-tree/neo-tree.nvim',
        {
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons',
            'MunifTanjim/nui.nvim'
        }
    },
    {
        'windwp/nvim-autopairs'
    },
    {
        'gbprod/phpactor.nvim',
        {
            'nvim-lua/plenary.nvim',
            'neovim/nvim-lspconfig'
        }
    }
})


vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('neo-tree').setup({
    window = {
      position = "right",
      width = 40
    }
})

require('nvim-autopairs').setup({
    disable_filetype = { "TelescopePrompt" },
    ignored_next_char = "[%w%.]"
})

require('phpactor').setup({
    install = {
        bin = "phpactor",
        php_bin = "php",
        composer_bin = "composer",
        git_bin = "git",
        check_on_startup = "none",
    },
    lspconfig = {
        enabled = true,
        options = {},
        mode = "full"
    },
})

kb = KeyBind

kb('<leader>b', ':Neotree toggle=true<CR>', 'Toggle NeoTree Browser')
