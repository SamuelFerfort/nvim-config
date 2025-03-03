return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    vim.list_extend(opts.ensure_installed, {
      "typescript",
      "javascript",
      "html",
      "css",
      "tsx",
      "yaml",
    })
  end,
}
