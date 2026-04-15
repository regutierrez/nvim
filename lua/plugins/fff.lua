return {
  {
    "dmtrKovalenko/fff.nvim",
    lazy = false,
    build = function()
      require("fff.download").download_or_build_binary()
    end,
    opts = {
      lazy_sync = true,
      -- optional:
      -- debug = {
      --   enabled = true,
      --   show_scores = true,
      -- },
    },
  },
}
