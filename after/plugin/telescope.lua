local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.live_grep({ search = vim.fn.input("Grep > ") })
end)

require('telescope').setup {
    extension = {
        repo = {
            search_dirs = {
                "~/Development/projects",
                "~/Development/",
            },
        },
    },
}

require('telescope').load_extension('fzf')
require('telescope').load_extension('repo')
