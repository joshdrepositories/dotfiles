local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	local search_term = vim.fn.input("Grep > ")
	if search_term and search_term ~= "" then
		builtin.grep_string({ search = search_term })
	end
end)
