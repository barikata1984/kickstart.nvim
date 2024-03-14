return {
  -- Python interpleter switcher
  'linux-cultist/venv-selector.nvim',
  dependencies = {
    'neovim/nvim-lspconfig',
    'nvim-telescope/telescope.nvim',
    'mfussenegger/nvim-dap-python',
  },
  lazy = false,
  config = function()
    local venv = require 'venv-selector'
    venv.setup {
      search = false,
      anaconda_base_path = os.getenv 'CONDA_PREFIX',
      anaconda_envs_path = os.getenv 'CONDA_PREFIX' .. '/envs',
      auto_refresh = true,
      search_workspace = false,
    }
    venv.retrieve_from_cache() -- for initiating auto detectioning a python imterpleter,
    -- acutally weird because auto initiation is defined in autocommands
  end,
  keys = {
    -- Keymap to open VenvSelector to pick a venv.
    { '<leader>vs', '<cmd>VenvSelect<cr>' },
    -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
    { '<leader>vc', '<cmd>VenvSelectCached<cr>' },
  },
}
