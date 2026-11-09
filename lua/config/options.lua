-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- 4-space indentation globally
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4
vim.opt.swapfile = false

-- Override for Lua: 2-space (stylua standard)
vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.softtabstop = 2
  end,
})

-- only for rose pine theme
vim.opt.pumblend = 10

-- disnable text wrapping
vim.opt.wrap = false

-- Keep Neovim's defaults for tab and nbsp; only change trailing spaces
vim.opt.listchars = {
  tab = "> ",
  trail = "•",
  nbsp = "+",
}
