local builtin= require('telescope.builtin')

require('telescope').load_extension('ui-select')

-- KEYMAPS --
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = 'Telescope find git files' })
vim.keymap.set('n', '<leader>fs', function()
  builtin.grep_string({
    search = vim.fn.input("GREP > ")
    })
end, { desc = 'Telescope grep files' })

