vim.o.termguicolors = true

require("config.plug")
require("config.remap")
require("config.set")
require("config.colors")
require("lsp.config")

-- Block cursor in normal mode
vim.cmd('let &t_EI = "\\e[1 q"')
-- Beam cursor in insert mode
vim.cmd('let &t_SI = "\\e[5 q"')
