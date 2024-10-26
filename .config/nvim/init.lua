vim.o.termguicolors = true

require("config.plug")
require("config.remap")
require("config.set")
require("config.colors")
require("lsp.config")

-- insert mode beam cursor toggle
vim.o.guicursor = "n-v-c:block,i-ci-ve:ver25"
