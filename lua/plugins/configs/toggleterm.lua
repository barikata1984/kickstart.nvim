local function opts(desc)
  return { desc = 'toggle-tree: ' .. desc, noremap = true, silent = true, nowait = true }
end

return {
  -- Activate terinals as floating windows
  'akinsho/toggleterm.nvim',
  version = '*',
  config = true,
  opts = {
    vim.keymap.set('n', '<leader>tt', '<cmd>ToggleTerm<CR>', opts '[T]oggle a [T]erminal window'),
    vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts 'Move out of a terminal'),
    vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts 'Move out of  a terminal'),
    vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts 'Move to the window left to the current one'),
    vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts 'Move to the window below the current one'),
    vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts 'Move to the window above the current one'),
    vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts 'Move to the window right to the current one'),
    vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts 'Move to the next window'),
  },
}
