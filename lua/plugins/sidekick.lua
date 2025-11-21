return {
  "folke/sidekick.nvim",
  opts = {
    nes = { 
      enabled = false,
    },
    cli = {
      win = {
        layout = "float",
        float = {
          width = 0.9,
          height = 0.9,
        },
      },
      tools = {
        cursor = {
          cmd = { "wsl", "-e", "bash", "-lc", "cursor-agent" },
        },
      },
    },
  },
}
