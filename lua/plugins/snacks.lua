return {
  {
    "folke/snacks.nvim",
    opts = function(_, opts)
      opts.bigfile = opts.bigfile or {}
      local default_setup = opts.bigfile.setup
      opts.bigfile.setup = function(ctx)
        if vim.api.nvim_buf_get_name(ctx.buf):match("%.jsonl$") then
          vim.bo[ctx.buf].filetype = "jsonl"
          vim.bo[ctx.buf].syntax = "json"
          return
        end

        if default_setup then
          default_setup(ctx)
        end
      end
    end,
  },
}
