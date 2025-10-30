-- Custom keymaps to add to init.lua.
vim.keymap.set('n', '<Tab>', '<cmd>bnext<CR>', { desc = 'Next Buffer' })
vim.keymap.set('n', '<S-Tab>', '<cmd>bprevious<CR>', { desc = 'Previous Buffer' })
vim.keymap.set('n', '-', 'yiw/\\v<C-R>0\\([^)]*(\\)|$)<CR>N', {desc = 'Find all instances of function calls or declarations with word under cursor'})
vim.keymap.set({'n', 'x', 'o'}, 's', '<Plug>(leap)')
vim.keymap.set('n',             'S', '<Plug>(leap-from-window)')
