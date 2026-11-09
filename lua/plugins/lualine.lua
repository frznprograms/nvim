return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      -- prepend nerd font vim logo in mode section
      opts.sections.lualine_a = {
        { "mode", icon = "" },
      }
    end,
  },
}
