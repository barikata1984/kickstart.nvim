return {
  --  -- Python interpleter switcher
  --  'linux-cultist/venv-selector.nvim',
  --  dependencies = {
  --    'neovim/nvim-lspconfig',
  --    'nvim-telescope/telescope.nvim',
  --    'mfussenegger/nvim-dap-python',
  --  },
  --  lazy = false,
  --  branch = 'regexp',
  --  config = function()
  --    local venv = require 'venv-selector'
  --    venv.setup {
  --      search = false,
  --      anaconda_base_path = os.getenv 'CONDA_PREFIX',
  --      anaconda_envs_path = os.getenv 'CONDA_PREFIX' .. '/envs',
  --      auto_refresh = true,
  --      search_workspace = false,
  --    }
  --    venv.retrieve_from_cache() -- for initiating auto detectioning a python imterpleter,
  --  end,
  --  keys = {
  --    -- Keymap to open VenvSelector to pick a venv.
  --    { '<leader>vs', '<cmd>VenvSelect<cr>' },
  --    -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
  --    { '<leader>vc', '<cmd>VenvSelectCached<cr>' },
  --  },
  --}
  --
  --
  --{
  --'barikata1984/venv-selector.nvim',
  'linux-cultist/venv-selector.nvim',
  dependencies = {
    'neovim/nvim-lspconfig',
    'mfussenegger/nvim-dap',
    'mfussenegger/nvim-dap-python', --optional
    { 'nvim-telescope/telescope.nvim', branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim' } },
  },
  lazy = false,
  branch = 'regexp', -- This is the regexp branch, use this for the new version
  config = function()
    require('venv-selector').setup()
    --{
    --  ()
    --end,

    --config = function()
    --  local venv = require 'venv-selector'
    --  venv.setup {
    --      search = false,
    --      anaconda_base_path = os.getenv 'CONDA_PREFIX',
    --      anaconda_envs_path = os.getenv 'CONDA_PREFIX' .. '/envs',
    --      auto_refresh = true,
    --      search_workspace = false,
    --    }
    -- venv.retrieve_from_cache() -- for initiating auto detectioning a python imterpleter,
  end,

  keys = {
    { '<leader>,v', '<cmd>VenvSelect<cr>' },
    { '<leader>,vc', '<cmd>VenvSelectCached<cr>' },
  },
}
