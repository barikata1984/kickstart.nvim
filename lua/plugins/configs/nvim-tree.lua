local function opts(desc)
  return { desc = 'nvim-tree: ' .. desc, noremap = true, silent = true, nowait = true }
end

return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    -- require('nvim-tree').setup {}
    -- pass to setup along with your other options
    require('nvim-tree').setup {
      --
      -- on_attach = my_on_attach,
      --
      vim.keymap.set('n', '<leader>te', '<cmd>NvimTreeFindFileToggle<CR>', opts '[T]oggle the file [E]xplorer focusing on the current file'),
      vim.keymap.set('n', '<leader>fe', '<cmd>NvimTreeFocus<CR>', opts '[F]ocus on the file [E]xplorer'),
    }
  end,
}
