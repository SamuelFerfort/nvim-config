return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require("cmp")
    -- Style customization to match coding.blink appearance
    --
    -- Get colors from your current theme
    local normal_bg = vim.api.nvim_get_hl(0, { name = "Normal" }).bg
    local float_bg = vim.api.nvim_get_hl(0, { name = "Float" }).bg or normal_bg
    local border_fg = vim.api.nvim_get_hl(0, { name = "FloatBorder" }).fg or normal_bg

    opts.window = {
      completion = {
        border = "rounded",
        winhighlight = "Normal:CmpNormal",
      },
      documentation = {
        border = "rounded",
        winhighlight = "Normal:CmpDocNormal",
      },
    }
    -- Use theme colors but force no transparency
    vim.api.nvim_set_hl(0, "CmpNormal", { bg = float_bg, blend = 0 })
    vim.api.nvim_set_hl(0, "CmpDocNormal", { bg = float_bg, blend = 0 })
    vim.api.nvim_set_hl(0, "CmpBorder", { fg = border_fg, bg = float_bg })

    -- We're extending the default mappings rather than overwriting them
    -- This way we keep the good defaults and just add our customizations
    opts.mapping = vim.tbl_extend("force", opts.mapping, {
      -- Disable enter key for completion because it's easy to accidentally
      -- trigger when you just want a new line
      ["<CR>"] = cmp.config.disable,

      -- Use Ctrl-j/k for navigation - this follows vim philosophy of using j/k
      -- for motion and keeps your hands on the home row
      ["<C-j>"] = cmp.mapping.select_next_item(),
      ["<C-k>"] = cmp.mapping.select_prev_item(),

      -- Tab to confirm completion - more ergonomic than Enter and
      -- prevents conflicts with newlines
      ["<Tab>"] = cmp.mapping.confirm({ select = true }),

      -- Explicitly disable up/down to build good navigation habits
      -- fallback() means these keys will still work normally when completion
      -- menu is not visible
      ["<Up>"] = cmp.mapping(function(fallback)
        fallback()
      end),
      ["<Down>"] = cmp.mapping(function(fallback)
        fallback()
      end),
    })

    -- Define our completion sources in priority order
    opts.sources = cmp.config.sources({
      { name = "nvim_lsp" }, -- LSP completions
      { name = "buffer" }, -- Text within current buffer
      { name = "path" }, -- File system paths
    })

    -- Keep ghost_text on because it works well with Copilot
    -- and gives good preview of completions
    opts.experimental = {
      ghost_text = true,
    }

    return opts
  end,
}
