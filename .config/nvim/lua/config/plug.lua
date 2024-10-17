local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('nvim-lua/plenary.nvim')
Plug('ThePrimeagen/harpoon')
Plug('nvim-telescope/telescope.nvim')
Plug('nvim-lualine/lualine.nvim')
Plug('nvim-tree/nvim-web-devicons')
Plug('preservim/nerdtree')
Plug('neovim/nvim-lspconfig')
Plug('williamboman/mason-lspconfig.nvim')
Plug('williamboman/mason.nvim')
Plug('norcalli/nvim-colorizer.lua')
Plug('lukas-reineke/indent-blankline.nvim')
Plug('f-person/git-blame.nvim')

vim.call('plug#end')

require("config.harpoon")
require("config.telescope")
require("config.lualine")
require("config.mason")
require("config.indent-blankline")
