return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.mapping = vim.tbl_extend("force", opts.mapping, {
      ["<CR>"] = cmp.config.disable,
      ["<C-j>"] = cmp.mapping.select_next_item(),
      ["<C-k>"] = cmp.mapping.select_prev_item(),
      ["<Tab>"] = cmp.mapping.confirm({ select = true }),
      ["<Up>"] = cmp.mapping(function(fallback)
        fallback()
      end),
      ["<Down>"] = cmp.mapping(function(fallback)
        fallback()
      end),
    })
    opts.experimental = {
      ghost_text = false,
    }
    return opts
  end,
}
