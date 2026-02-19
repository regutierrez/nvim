-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- fix bug where file watching is not working when sidekick attaches to a separate tmux instance
vim.o.autoread = true
local group = vim.api.nvim_create_augroup("sidekick_watch_fix", { clear = true })
vim.api.nvim_create_autocmd("User", {
  group = group,
  pattern = "SidekickCliAttach",
  callback = function()
    require("sidekick.cli.watch").enable()
  end,
})
