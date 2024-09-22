---- [[ Basic Autocommands ]]
----  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- vim.api.nvim_create_autocmd('BufEnter', {
--   desc = 'Auto select virtualenv Nvim open',
--   pattern = '*',
--   callback = function()
-- local venv = vim.fn.findfile('pyproject.toml', vim.fn.getcwd() .. ';')
-- if venv ~= '' then
--     require('venv-selector').retrieve_from_cache()
-- end
--   end,
--   once = true,
-- })
