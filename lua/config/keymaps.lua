-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local function refresh_buffer_diagnostics()
  vim.diagnostic.reset(nil, 0)

  if vim.bo.modified then
    vim.notify("Cleared diagnostics for this buffer. Save or make an edit to trigger fresh LSP diagnostics.", vim.log.levels.INFO)
    return
  end

  vim.cmd.edit()
end

vim.keymap.set("n", "<leader>br", "<cmd>e<cr>", { desc = "Reload Buffer" })
vim.keymap.set("n", "<leader>cL", refresh_buffer_diagnostics, { desc = "Refresh Diagnostics" })
