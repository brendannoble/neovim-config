return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    event = "VeryLazy",
    opts = {
      direction = "vertical",
      size = function(term)
        if term.direction == "vertical" then
          return math.floor(vim.o.columns * 0.4)
        end
        return 15
      end,
      open_mapping = [[<c-\>]],
      insert_mappings = true,
      terminal_mappings = true,
      start_in_insert = true,
      persist_mode = true,
      persist_size = true,
      close_on_exit = true,
    },
    config = function(_, opts)
      require("toggleterm").setup(opts)

      vim.api.nvim_create_autocmd("TermOpen", {
        pattern = "term://*toggleterm#*",
        callback = function(args)
          vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { buffer = args.buf })
        end,
      })
    end,
  },
}
