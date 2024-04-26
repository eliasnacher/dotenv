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
    },
    {
	'catppuccin/nvim'
    },
    {
	'vim-airline/vim-airline',
	{
		'vim-airline/vim-airline-themes'
	}
    },
    {
	'hrsh7th/nvim-cmp',
	{
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-buffer'
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
        bin = vim.fn.expand("$HOME/.config/composer/vendor/bin/phpactor"),
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

require("catppuccin").setup({
    flavour = "auto", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = false, -- disables setting the background color.
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
    },
    color_overrides = {},
    custom_highlights = {},
    default_integrations = true,
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
            enabled = true,
            indentscope_color = "",
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

require('cmp').setup({
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' }
  }
})

-- setup must be called before loading
vim.cmd.colorscheme 'catppuccin'
vim.g.airline_theme = 'google_dark'

kb = KeyBind

kb('<leader>b', ':Neotree toggle=true<CR>', 'Toggle NeoTree Browser')
