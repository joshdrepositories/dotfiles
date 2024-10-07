local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<leader>e", ui.toggle_quick_menu)

for i = 1, 10 do
	vim.keymap.set("n", string.format("<leader>%s",i%10), function() ui.nav_file(i) end)
end
