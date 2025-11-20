return {
  "olimorris/onedarkpro.nvim",
  priority = 1000, -- Ensure it loads first
  config = function()
    require("onedarkpro").setup({
      colors = {
        onedark_vivid = { bg = "#0D1117" }, -- Set background to #0D1117
      },
    })
    vim.cmd("colorscheme onedark_vivid") -- Activate the onedark theme
  end,
}
