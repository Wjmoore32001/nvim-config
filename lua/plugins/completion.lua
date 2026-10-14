return {
  -- Disable the collection of predefined code snippets
  {
    "rafamadriz/friendly-snippets",
    enabled = false,
  },

  -- Configure traditional autocomplete
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      -- Remove snippet suggestions
      opts.sources.default = vim.tbl_filter(function(source)
        return source ~= "snippets"
      end, opts.sources.default)

      -- Use traditional completion keys
      opts.keymap.preset = "default"
      opts.keymap["<C-y>"] = false
      opts.keymap["<S-CR>"] = { "accept", "fallback" }

      -- Don't automatically select or insert suggestions
      opts.completion.list = {
        selection = {
          preselect = false,
          auto_insert = false,
        },
      }

      -- No inline completion previews
      opts.completion.ghost_text = {
        enabled = false,
      }

      -- Don't automatically add parentheses to functions
      opts.completion.accept.auto_brackets.enabled = false
    end,
  },
}
