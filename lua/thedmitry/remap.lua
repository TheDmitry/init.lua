local telescope = require('telescope.builtin')


vim.g.mapleader = " "
vim.keymap.set('n', '<Tab><Tab>', vim.cmd.NvimTreeToggle)
--vim.keymap.set('n', '<Tab><Tab>', vim.cmd.NERDTreeToggle)
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('n', '<leader>pf', telescope.find_files)
vim.keymap.set('n', '<leader>ps', function()
    telescope.grep_string({ search = vim.fn.input('Grep: ')})
end)
vim.keymap.set('n', '<leader>gs', vim.cmd.Git)
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')
vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>')
