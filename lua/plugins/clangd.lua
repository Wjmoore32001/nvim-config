return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      local clangd = opts.servers.clangd

      -- Don't insert function argument placeholders
      clangd.cmd = vim.tbl_filter(function(arg)
        return arg ~= "--function-arg-placeholders"
      end, clangd.cmd)

      clangd.init_options.usePlaceholders = false
    end,
  },
}
