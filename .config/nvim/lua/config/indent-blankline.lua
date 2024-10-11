vim.opt.list = true
vim.api.nvim_set_hl(0, "IndentBlanklineIndent1", { fg = "#1586ef", nocombine = true })

require("ibl").setup {
    indent = { 
        char = '│',
        highlight = { "IndentBlanklineIndent1" },
    },
    scope = { enabled = true },
}
