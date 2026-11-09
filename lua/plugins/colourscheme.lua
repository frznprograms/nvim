-- return {
--   "vague2k/vague.nvim",
--   config = function()
--     require("vague").setup({
--       transparent = true,
--     })
--     vim.cmd.colorscheme("vague")
--   end,
-- }
--
return {
  "rose-pine/neovim",
  name = "rose-pine",
  opts = {
    variant = "main",
    dark_variant = "main",
    dim_inactive_windows = false,
    styles = {
      transparency = true,
    },
  },

  config = function(_, opts)
    require("rose-pine").setup(opts)
    vim.cmd("colorscheme rose-pine")
  end,
}
