return {
  {
    "folke/sidekick.nvim",
    opts = {
      nes = {
        enabled = false,
      },
      cli = {
        watch = true,
        mux = {
          enabled = true,
          backend = "tmux",
          create = "terminal",
        },
        win = {
          layout = "right",
          split = {
            width = 0.35,
          },
          keys = {
            hide_ctrl_backslash = { "<c-\\>", "hide", mode = "nt", desc = "hide the terminal window" },
          },
        },
        tools = {
          pi = {
            cmd = { "pi" },
            is_proc = "\\<pi\\>",
            url = "https://github.com/mariozechner/pi-coding-agent",
          },
          amp = {
            cmd = { "amp" },
            is_proc = "\\<amp\\>",
          },
        },
      },
    },
    keys = {
      {
        "<leader>aa",
        function()
          require("sidekick.cli").toggle()
        end,
        desc = "Sidekick Toggle CLI",
      },
      {
        "<c-\\>",
        function()
          require("sidekick.cli").toggle()
        end,
        mode = { "n", "t" },
        desc = "Sidekick Toggle CLI",
      },
      {
        "<leader>as",
        function()
          require("sidekick.cli").select({ filter = { installed = true } })
        end,
        desc = "Sidekick Select CLI",
      },
      {
        "<leader>ap",
        function()
          require("sidekick.cli").prompt()
        end,
        mode = { "n", "x" },
        desc = "Sidekick Select Prompt",
      },
      {
        "<leader>at",
        function()
          require("sidekick.cli").send({ msg = "{this}" })
        end,
        mode = { "n", "x" },
        desc = "Sidekick Send This",
      },
      {
        "<leader>af",
        function()
          require("sidekick.cli").send({ msg = "{file}" })
        end,
        desc = "Sidekick Send File",
      },
      {
        "<leader>ax",
        function()
          require("sidekick.cli").detach()
        end,
        desc = "Sidekick Detach Session",
      },
      {
        "<leader>ad",
        function()
          require("sidekick.cli").send({ prompt = "diagnostics" })
        end,
        desc = "Sidekick Send Diagnostics (current file)",
      },
      {
        "<leader>aD",
        function()
          require("sidekick.cli").send({ prompt = "diagnostics_all" })
        end,
        desc = "Sidekick Send Diagnostics (all)",
      },
      {
        "<leader>av",
        function()
          require("sidekick.cli").send({ msg = "{selection}" })
        end,
        mode = { "x" },
        desc = "Sidekick Send Selection",
      },
    },
  },
  -- Prevent Copilot auth prompts while keeping Sidekick CLI working.
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        copilot = {},
      },
      setup = {
        copilot = function()
          return true
        end,
      },
    },
  },
  { "zbirenbaum/copilot.lua", enabled = false },
  { "github/copilot.vim", enabled = false },
}
