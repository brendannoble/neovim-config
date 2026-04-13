return {
  "folke/sidekick.nvim",
  keys = {
    {
      "<C-.>",
      function()
        require("sidekick.cli").toggle()
      end,
      mode = { "n", "t", "i", "x" },
      desc = "Sidekick Toggle",
    },
    {
      "<leader>azl",
      function()
        local cfg = require("sidekick.config")
        cfg.cli.win.layout = "left"
        cfg.cli.win.split.width = 0.5
      end,
      desc = "Sidekick Left Split (50%)",
    },
    {
      "<leader>azr",
      function()
        local cfg = require("sidekick.config")
        cfg.cli.win.layout = "right"
        cfg.cli.win.split.width = 0.5
      end,
      desc = "Sidekick Right Split (50%)",
    },
    {
      "<leader>azt",
      function()
        local cfg = require("sidekick.config")
        cfg.cli.win.layout = "top"
        cfg.cli.win.split.height = 0.5
      end,
      desc = "Sidekick Top Split (50%)",
    },
    {
      "<leader>azb",
      function()
        local cfg = require("sidekick.config")
        cfg.cli.win.layout = "bottom"
        cfg.cli.win.split.height = 0.5
      end,
      desc = "Sidekick Bottom Split (50%)",
    },
    {
      "<leader>azf",
      function()
        local cfg = require("sidekick.config")
        cfg.cli.win.layout = "float"
      end,
      desc = "Sidekick Float",
    },
  },
  opts = {
    cli = {
      win = {
        keys = {
          buffers = false,
        },
        layout = "float",
        float = {
          width = 0.9,
          height = 0.9,
        },
      },
      tools = {
        claude = {
          cmd = { "claude", "--chrome" },
          keys = { buffers = false },
        },
        chief = {
          cmd = { "chief" }
        aoe = {
          cmd = { "aoe" },
        },
      },
    },
    nes = {
      enabled = false,
    },
  },
}
