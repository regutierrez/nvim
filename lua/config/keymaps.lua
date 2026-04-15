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

local function root_dir()
  return LazyVim.root()
end

local function cwd_dir()
  return vim.uv.cwd()
end

local function grep_root(opts)
  opts = opts or {}
  require("fff").live_grep(vim.tbl_deep_extend("force", {
    cwd = root_dir(),
    title = "Live Grep (Root Dir)",
  }, opts))
end

local function grep_cwd(opts)
  opts = opts or {}
  require("fff").live_grep(vim.tbl_deep_extend("force", {
    cwd = cwd_dir(),
    title = "Live Grep (cwd)",
  }, opts))
end

vim.keymap.set("n", "<leader>br", "<cmd>e<cr>", { desc = "Reload Buffer" })
vim.keymap.set("n", "<leader>cL", refresh_buffer_diagnostics, { desc = "Refresh Diagnostics" })

vim.keymap.set("n", "<leader><space>", function()
  require("fff").find_files_in_dir(root_dir())
end, { desc = "Find Files (Root Dir)" })

vim.keymap.set("n", "<leader>ff", function()
  require("fff").find_files_in_dir(root_dir())
end, { desc = "Find Files (Root Dir)" })

vim.keymap.set("n", "<leader>fF", function()
  require("fff").find_files_in_dir(cwd_dir())
end, { desc = "Find Files (cwd)" })

vim.keymap.set("n", "<leader>fc", function()
  require("fff").find_files_in_dir(vim.fn.stdpath("config"))
end, { desc = "Find Config File" })

vim.keymap.set("n", "<leader>/", function()
  grep_root()
end, { desc = "Grep (Root Dir)" })

vim.keymap.set("n", "<leader>sg", function()
  grep_root()
end, { desc = "Grep (Root Dir)" })

vim.keymap.set("n", "<leader>sG", function()
  grep_cwd()
end, { desc = "Grep (cwd)" })

vim.keymap.set("n", "<leader>sw", function()
  grep_root({ query = vim.fn.expand("<cword>") })
end, { desc = "Word (Root Dir)" })

vim.keymap.set("n", "<leader>sW", function()
  grep_cwd({ query = vim.fn.expand("<cword>") })
end, { desc = "Word (cwd)" })
