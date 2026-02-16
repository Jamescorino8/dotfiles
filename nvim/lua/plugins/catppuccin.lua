return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        -- Optional: customize flavors (mocha, macchiato, frappe, latte)
        flavour = "mocha",
        integrations = {
          cmp = true,
          treesitter = true,
          native_lsp = { enabled = true },
          -- Add more integrations as needed
        },
      })
    end,
  },
  -- Configure LazyVim to use catppuccin
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
