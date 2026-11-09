-- JSON, YAML, TOML: plain servers, no SchemaStore plugin
return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      jsonls = {},
      yamlls = {},
      taplo = {},
    },
  },
}
