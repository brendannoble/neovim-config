-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.guifont = "CaskaydiaCove Nerd Font Mono:h12:b"
vim.g.autoformat = false

vim.diagnostic.enable(false)
vim.opt.relativenumber = false;

-- Set PowerShell on Windows
if vim.fn.has("win32") == 1 then
  vim.opt.shell = "pwsh"
  vim.opt.shellcmdflag = "-NoLogo -Command"
  vim.opt.shellquote = ""
  vim.opt.shellxquote = ""
end
