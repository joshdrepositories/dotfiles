-- ~/.config/nvim/lua/lsp/config.lua
local lspconfig = require('lspconfig')

-- Example configuration for Python (pyright)
lspconfig.pyright.setup{}
lspconfig.ansiblels.setup{
  { "ansible-language-server", "--stdio" },
  { "yaml.ansible" },
  {
    ansible = {
      ansible = {
        path = "ansible"
      },
      executionEnvironment = {
        enabled = false
      },
      python = {
        interpreterPath = "python"
      },
      validation = {
        enabled = true,
        lint = {
          enabled = true,
          path = "ansible-lint"
        }
      }
    }
  }
}
