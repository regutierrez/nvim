-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.snacks_animate = false
vim.g.lazyvim_python_lsp = "basedpyright"

vim.filetype.add({
  -- Snacks' bigfile detector registers a catch-all pattern that can run before
  -- extension matching. Give JSONL a higher-priority pattern so large .jsonl
  -- files keep the jsonl filetype and Conform can find jq_jsonl on save.
  pattern = {
    [".*%.jsonl"] = { "jsonl", { priority = 100 } },
  },
  extension = {
    jsonl = "jsonl",
  },
})

vim.treesitter.language.register("json", "jsonl")

if vim.fn.has("mac") ~= 1 then
  vim.o.clipboard = "unnamedplus"
  vim.g.clipboard = {
    name = "OSC 52",
    copy = {
      ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
      ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
    },
    paste = {
      ["+"] = require("vim.ui.clipboard.osc52").paste("+"),
      ["*"] = require("vim.ui.clipboard.osc52").paste("*"),
    },
  }
end
