return {
  {
    "3rd/image.nvim",
    build = false,
    ft = { "markdown", "vimwiki" },
    event = {
      {
        event = "BufReadPre",
        pattern = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp", "*.avif" },
      },
    },
    cond = function()
      return #vim.api.nvim_list_uis() > 0
    end,
    opts = {
      backend = "kitty",
      processor = "magick_cli",
      integrations = {
        markdown = {
          enabled = true,
          download_remote_images = true,
          filetypes = { "markdown", "vimwiki" },
        },
      },
    },
  },
}
