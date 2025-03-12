return {
  "olimorris/onedarkpro.nvim",
  priority = 1000, -- Ensure it loads first
  config = function()
    require("onedarkpro").setup({
      colors = {
        onedark = { bg = "#0D1117" }, -- Set background to #0D1117
      },
    })
    vim.cmd("colorscheme onedark") -- Activate the onedark theme
  end,
}
