-- lua/plugins/blink.lua
-- Overrides on top of LazyVim's blink.cmp defaults (opts are merged with LazyVim's spec).

return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        -- 'enter' preset: <CR> accepts the selected item
        preset = "enter",

        -- Open menu / toggle docs popup (insert mode only, so no clash with flash's <C-space>)
        ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },

        -- Esc closes the completion menu first; a second Esc leaves insert mode
        ["<Esc>"] = { "hide", "fallback" },
        ["<C-e>"] = { "hide", "fallback" },

        -- Navigate the list (highlight only, nothing is inserted until <CR>)
        ["<C-n>"] = { "select_next", "fallback" },
        ["<C-p>"] = { "select_prev", "fallback" },
        ["<Down>"] = { "select_next", "fallback" },
        ["<Up>"] = { "select_prev", "fallback" },

        -- Scroll the documentation popup
        ["<C-f>"] = { "scroll_documentation_down", "fallback" },
        ["<C-b>"] = { "scroll_documentation_up", "fallback" },

        -- Snippet placeholders
        ["<Tab>"] = { "snippet_forward", "fallback" },
        ["<S-Tab>"] = { "snippet_backward", "fallback" },

        -- Toggle signature help in insert mode (K can't be used here: it would block typing "K")
        ["<M-k>"] = { "show_signature", "hide_signature", "fallback" },

        -- Free up keys you use elsewhere
        ["<C-k>"] = {}, -- reserved for your navigation
        ["<C-y>"] = {}, -- LazyVim adds this as an extra accept key; not needed with <CR>
      },

      completion = {
        menu = { border = "single" },
        list = {
          selection = {
            -- Nothing highlighted until you move, so <CR> on a fresh menu inserts a newline
            preselect = true,
            -- Moving through the list does NOT insert text into the buffer
            auto_insert = false,
          },
        },
        documentation = {
          -- Show docs for the highlighted item after a short delay
          auto_show = true,
          auto_show_delay_ms = 200,
          -- single borders on windows
          window = { border = "single" },
        },
      },

      -- Signature help pops up automatically after "(" and ","
      signature = { enabled = true, window = { border = "single" } },
    },
  },
}
