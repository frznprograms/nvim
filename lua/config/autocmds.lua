-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- set rounded borders for floating windows
vim.diagnostic.config({ float = { border = "rounded" } })

-- set statusline background to be transparent
vim.cmd(":hi statusline guibg=None")

-- set pop-up menu background to be transparent
vim.opt.pumblend = 10
