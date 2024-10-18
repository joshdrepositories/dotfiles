-- set leader key
vim.g.mapleader = " "

-- SPLIT MANAGEMENT --
-- create splits
vim.keymap.set("n", "<leader>-", vim.cmd.split)
vim.keymap.set("n", "<leader>\\", vim.cmd.vsplit)
-- navigate splits
vim.keymap.set("n", "<C-k>", function() vim.cmd("wincmd k") end)
vim.keymap.set("n", "<C-j>", function() vim.cmd("wincmd j") end)
vim.keymap.set("n", "<C-h>", function() vim.cmd("wincmd h") end)
vim.keymap.set("n", "<C-l>", function() vim.cmd("wincmd l") end)

-- VISUALIZE TABS AND EOL --
vim.opt.listchars = { tab = '▸\\ ', eol = '¬' }
vim.api.nvim_set_keymap('n', '<leader>l', ':set list!<CR>', { noremap = true, silent = true })
-- Set true to enable by default:
vim.opt.list = false

-- SWITCH BETWEEN TAB AND DOUBLE SPACE --
vim.api.nvim_set_keymap('n', '<leader>	', ':set expandtab!<CR>', { noremap = true, silent = false})

-- EXIT VIM WIHOUT SAVING --
vim.api.nvim_set_keymap('n', '<leader>qq', ':q!<CR>', { noremap = true, silent = false})

-- EXIT VIM AND SAVE FILE --
vim.api.nvim_set_keymap('n', '<leader>wq', ':wq<CR>', { noremap = true, silent = false})

-- ADD/REMOVE "#" TO BEGINNING OF ALL LINES IN A PARAGRAPH --
vim.api.nvim_set_keymap('n', '<leader>a#', ':norm vip<CR>:norm 0i# <CR>', { noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>r#', ':norm vip<CR>:norm xx<CR>', { noremap = true, silent = false})

-- ADD/REMOVE "--" TO BEGINNING OF ALL LINES IN A PARAGRAPH --
vim.api.nvim_set_keymap('n', '<leader>a-', ':norm vip<CR>:norm 0i-- <CR>', { noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>r-', ':norm vip<CR>:norm xxx<CR>', { noremap = true, silent = false})

--FILE EXPLORER --
vim.api.nvim_set_keymap('n', '<leader>pv', ':Ex<CR>', { noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>pf', ':Telescope find_files<CR>', { noremap = true, silent = false})

-- NERDTree --
vim.api.nvim_set_keymap('n', '<leader>n', ':NERDTreeToggle<CR>', { noremap = true, silent = false})

-- Harpoon --

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<leader>e", ui.toggle_quick_menu)

-- ANSIBLE VAULT
vim.api.nvim_set_keymap('n', '<leader>av', ':!ansible-vault encrypt --encrypt-vault-id default --vault-password-file=~/.vault_pass %<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>au', ':!ansible-vault decrypt --vault-password-file=~/.vault_pass %<CR>', { noremap = true, silent = true })
