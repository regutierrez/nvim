return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",

    -- Keymaps live here so Harpoon loads only when you use them.
    -- Change or remove any mappings you do not want.
    keys = (function()
      local keys = {
        {
          "<leader>ha",
          function()
            require("harpoon"):list():add()
          end,
          desc = "Harpoon add file",
        },
        {
          "<leader>hh",
          function()
            local harpoon = require("harpoon")
            harpoon.ui:toggle_quick_menu(harpoon:list())
          end,
          desc = "Harpoon menu",
        },
        {
          "<leader>hn",
          function()
            require("harpoon"):list():next()
          end,
          desc = "Harpoon next",
        },
        {
          "<leader>hp",
          function()
            require("harpoon"):list():prev()
          end,
          desc = "Harpoon prev",
        },
      }

      for i = 1, 9 do
        table.insert(keys, {
          "<leader>" .. i,
          function()
            require("harpoon"):list():select(i)
          end,
          desc = "Harpoon to File " .. i,
        })
      end

      return keys
    end)(),

    -- opts are passed to Harpoon's setup() function.
    -- Everything under settings changes Harpoon behavior.
    opts = {
      -- Menu config controls the Harpoon UI window.
      -- width uses the current window width minus a margin.
      menu = {
        width = vim.api.nvim_win_get_width(0) - 4,
      },
      settings = {
        -- Use LazyVim's project root so each repo gets its own list.
        -- If you prefer a single global list, replace with:
        -- key = function() return "global" end,
        key = function()
          return require("lazyvim.util").root()
        end,

        -- Autosave behavior.
        -- save_on_change: save when the list changes (add/remove).
        -- save_on_toggle: save when the Harpoon menu is toggled.
        -- sync_on_ui_close: sync when the menu closes.
        save_on_change = true,
        save_on_toggle = true,
        sync_on_ui_close = true,
      },
    },
  },
}
