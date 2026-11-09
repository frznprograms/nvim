return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- types, hover, go-to-definition, completion
        basedpyright = {
          settings = {
            basedpyright = {
              disableOrganizeImports = true, -- ruff does this
              analysis = {
                typeCheckingMode = "standard", -- default "recommended" is very strict
              },
            },
          },
        },
        -- linting + quick fixes; rules come from pyproject.toml [tool.ruff]
        ruff = {},
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "ruff_organize_imports", "ruff_format" },
      },
    },
  },
  -- debugging: debugpy from Mason runs the adapter, your project's .venv runs the code
  {
    "mason-org/mason.nvim",
    opts = { ensure_installed = { "debugpy" } },
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = { "mfussenegger/nvim-dap" },
    config = function()
      local debugpy = vim.fn.stdpath("data") .. "/mason/packages/debugpy/venv/bin/python"
      require("dap-python").setup(debugpy)
    end,
    -- stylua: ignore
    keys = {
      { "<leader>dPt", function() require("dap-python").test_method() end, desc = "Debug Test Method", ft = "python" },
      { "<leader>dPc", function() require("dap-python").test_class() end, desc = "Debug Test Class", ft = "python" },
    },
  },
}
