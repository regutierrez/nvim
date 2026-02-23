return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          hidden = true,
          -- exempt specific directories from being ignored (even if in .gitignore)
          include = { "pael", ".agents" },
        },
      },
    },
  },
}
