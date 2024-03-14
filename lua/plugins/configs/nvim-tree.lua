local function opts(desc)
  return { desc = 'nvim-tree: ' .. desc, noremap = true, silent = true, nowait = true }
end

local function my_on_attach(bufnr)
  local api = require 'nvim-tree.api'

  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set('n', '<leader>ee', ':NvimTreeToggle<CR>', opts 'Toggle file explorer')
  -- vim.keymap.set('n', '<leader>ef', '<cmd>NvimTreeFindFileToggle<CR>', opts 'Toggle file explorer on current file')
  -- vim.keymap.set('n', '<leader>ec', '<cmd>NvimTreeCollapse<CR>', opts 'Collapse file explorer')
  -- vim.keymap.set('n', '<leader>er', '<cmd>NvimTreeRefresh<CR>', opts 'Refresh file explorer')
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
      vim.keymap.set('n', '<leader>ex', '<cmd>NvimTreeFindFileToggle<CR>', opts 'Toggle file explorer on current file'),
      vim.keymap.set('n', '<leader>ef', '<cmd>NvimTreeFocus<CR>', opts 'Toggle file explorer on current file'),
    }
  end,
}
