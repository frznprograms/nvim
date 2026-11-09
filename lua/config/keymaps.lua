-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = "Yank something to system clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>Y", '"+Y', { desc = "Yank line to system clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p', { desc = "Paste something from system clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>P", '"+P', { desc = "Paste line from system clipboard" })

-- increment/decrement
vim.keymap.set({ "n" }, "+", "<C-a>", { desc = "Increment", silent = true })
vim.keymap.set({ "n" }, "-", "<C-x>", { desc = "Increment", silent = true })

-- remap <C-a> to do select all
vim.keymap.set({ "n" }, "<C-a>", "ggVG", { desc = "select all", silent = true })

-- delete a word
vim.keymap.set({ "n" }, "dw", "viwd", { desc = "Increment", silent = true })

-- resizing windows
vim.keymap.set({ "n" }, "<C-w><left>", "<cmd>vertical resize -5<CR>", { silent = true })
vim.keymap.set({ "n" }, "<C-w><right>", "<cmd>vertical resize +5<CR>", { silent = true })
vim.keymap.set({ "n" }, "<C-w><up>", "<cmd>horizontal resize +5<CR>", { silent = true })
vim.keymap.set({ "n" }, "<C-w><down>", "<cmd>horizontal resize -5<CR>", { silent = true })
