return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        keys = {
          {
            icon = " ",
            key = "f",
            desc = "Find File",
            action = function()
              require("fff").find_files_in_dir(LazyVim.root())
            end,
          },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          {
            icon = " ",
            key = "g",
            desc = "Find Text",
            action = function()
              require("fff").live_grep({ cwd = LazyVim.root(), title = "Live Grep (Root Dir)" })
            end,
          },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          {
            icon = " ",
            key = "c",
            desc = "Config",
            action = function()
              require("fff").find_files_in_dir(vim.fn.stdpath("config"))
            end,
          },
          { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
          { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
    },
  },
}
