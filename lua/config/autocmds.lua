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

local gopls_diag_group = vim.api.nvim_create_augroup("gopls_diagnostic_hygiene", { clear = true })

local function gopls_keep_namespaces(bufnr)
  local keep = {}

  for _, client in ipairs(vim.lsp.get_clients({ bufnr = bufnr, name = "gopls" })) do
    keep[vim.lsp.diagnostic.get_namespace(client.id)] = true

    if vim.tbl_get(client.server_capabilities, "diagnosticProvider") then
      keep[vim.lsp.diagnostic.get_namespace(client.id, true)] = true
    end
  end

  return keep
end

local function prune_stale_gopls_diagnostics(bufnr)
  if not vim.api.nvim_buf_is_valid(bufnr) then
    return
  end

  local keep = gopls_keep_namespaces(bufnr)
  for name, namespace in pairs(vim.api.nvim_get_namespaces()) do
    -- Old gopls client namespaces can survive workspace/client churn and keep stale diagnostics visible.
    if name:match("^vim%.lsp%.gopls%.") and not keep[namespace] then
      vim.diagnostic.reset(namespace, bufnr)
    end
  end
end

vim.api.nvim_create_autocmd({ "LspAttach", "LspDetach", "BufEnter" }, {
  group = gopls_diag_group,
  callback = function(args)
    local bufnr = args.buf
    local filetype = vim.bo[bufnr].filetype
    if filetype ~= "go" and filetype ~= "gomod" and filetype ~= "gowork" then
      return
    end

    vim.schedule(function()
      prune_stale_gopls_diagnostics(bufnr)
    end)
  end,
})
