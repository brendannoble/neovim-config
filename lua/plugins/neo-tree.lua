return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      sources = { "filesystem", "buffers", "git_status" },
      source_selector = {
        winbar = true,
        statusline = false,
        sources = {
          { source = "filesystem", display_name = "  File" },
          { source = "buffers", display_name = "  Bufs" },
          { source = "git_status", display_name = " 󰊢 Git" },
        },
      },
      window = {
        position = "left",
        width = 36,
      },
      filesystem = {
        follow_current_file = {
          enabled = true,
        },
        use_libuv_file_watcher = true,
      },
    },
  },
}
