-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins, you can run
--    :Lazy update
--
return {
  -- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  -- NOTE: Plugins can also be added by using a table,
  -- with the first argument being the link and the following
  -- keys can be used to configure plugin behavior/loading/etc.
  --
  -- Use `opts = {}` to force a plugin to be loaded.
  --
  --  This is equivalent to:
  --    require('Comment').setup({})

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },

  require 'plugins.configs.conform',
  require 'plugins.configs.debug-adapter-protocol',

  -- require 'plugins.configs.gitsigns',
  -- Here is a more advanced example where we pass configuration
  -- options to `gitsigns.nvim`. This is equivalent to the following lua:
  --    require('gitsigns').setup({ ... })
  --
  -- See `:help gitsigns` to understand what the configuration keys do
  {
    -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  },

  -- NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
  --    This is the easiest way to modularize your config.
  --    For additional information, see `:help lazy.nvim-lazy.nvim-structuring-your-plugins`
  require 'plugins.configs.kanagawa',
  require 'plugins.configs.mini',
  require 'plugins.configs.nvim-cmp',
  require 'plugins.configs.nvim-lspconfig',
  require 'plugins.configs.nvim-tree',
  require 'plugins.configs.nvim-treesitter',
  -- require 'plugins.configs.telescope',
  require 'plugins.configs.todo-comments',
  require 'plugins.configs.toggleterm',
  require 'plugins.configs.venv-selector',
  require 'plugins.configs.which-key',
}
