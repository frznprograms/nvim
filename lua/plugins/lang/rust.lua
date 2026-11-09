return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        rust_analyzer = {
          mason = false, -- use rustup's rust-analyzer so it matches your toolchain
          settings = {
            ["rust-analyzer"] = {
              cargo = { allFeatures = true },
              check = { command = "clippy" },
            },
          },
        },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        rust = { "rustfmt" },
      },
    },
  },
  -- debugging: codelldb from Mason; build with `cargo build` first
  {
    "mason-org/mason.nvim",
    opts = { ensure_installed = { "codelldb" } },
  },
  {
    "mfussenegger/nvim-dap",
    -- an opts function runs when nvim-dap loads, without replacing dap.lua's config
    opts = function()
      local dap = require("dap")
      dap.adapters.codelldb = {
        type = "executable",
        command = "codelldb",
      }
      dap.configurations.rust = {
        {
          name = "Launch binary",
          type = "codelldb",
          request = "launch",
          program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/target/debug/", "file")
          end,
          cwd = "${workspaceFolder}",
          stopOnEntry = false,
        },
      }
    end,
  },
}
