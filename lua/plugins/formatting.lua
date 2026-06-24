return {
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = function(_, opts)
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      opts.formatters_by_ft.vue = {
        "oxfmt",
        lsp_format = "never",
      }
      opts.formatters_by_ft.jsonl = { "jq_jsonl" }
      opts.formatters_by_ft.bigfile = function(bufnr)
        if vim.api.nvim_buf_get_name(bufnr):match("%.jsonl$") then
          return { "jq_jsonl" }
        end
        return {}
      end
      opts.formatters = opts.formatters or {}
      opts.formatters.jq_jsonl = {
        command = "jq",
        args = { "." },
        stdin = true,
      }
    end,
  },
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      for _, tool in ipairs({ "oxfmt", "jq" }) do
        if not vim.tbl_contains(opts.ensure_installed, tool) then
          table.insert(opts.ensure_installed, tool)
        end
      end
    end,
  },
}
