return {
  -- Gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    -- priority = 1000 ,
    config = function()
      require("gruvbox").setup({
        terminal_colors = true, -- add neovim terminal colors
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = false,
          emphasis = false,
          comments = true,
          folds = false,
          operators = false,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = "",  -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {
          Pmenu = { bg = "" }, -- Completion menu background
        },
        dim_inactive = false,
        transparent_mode = true,
      })
    end,
    },
  -- Monokai Pro 
  {
    "loctvl842/monokai-pro.nvim",
    config = function()
      require("monokai-pro").setup({
        transparent_background = true,
        terminal_colors = true,
        devicons = true, -- highlight the icons of `nvim-web-devicons`
        bold = true,
        italic = {
          comment = true,
          keyword = true,
          type = true,
          tag_attribute = true
        },
        filter = "ristretto", -- classic | octagon | pro | machine | ristretto | spectrum
      })
    end,
  },
  -- Catppuccin
  {
    "catppuccin/nvim",
    config = function()
      require("catppuccin").setup({
        flavour = "macchiato", -- latte, frappe, macchiato, mocha
        transparent_background = true,
        terminal_colors = true,
        devicons = true, -- highlight the icons of `nvim-web-devicons`
        bold = true,
        italic = {
          comment = true,
          keyword = true,
          type = true,
          tag_attribute = true
        },
      })
    end,
  },
  -- Nord
  {
    "shaunsingh/nord.nvim"
  },
  -- Tokyo Night
  {
    "folke/tokyonight.nvim"
  },
  -- Matte Black
  {
    "tahayvr/matteblack.nvim"
  }

}
