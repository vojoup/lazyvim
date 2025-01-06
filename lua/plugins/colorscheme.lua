return {
  {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    name = "catppuccin",
    opts = function()
      return {
        custom_highlights = function(colors)
          return {
            CursorLineNr = { fg = colors.peach, bold = true },
            LineNrAbove = { fg = colors.surface2 },
            LineNrBelow = { fg = colors.surface2 },
            LspInlayHint = { italic = true },
          }
        end,
        term_colors = true,
        color_overrides = {
          mocha = {
            mantle = "#0e0f16",
            crust = "#0e0f16",
            base = "#000000",

            rosewater = "#efc9c2",
            flamingo = "#ebb2b2",
            pink = "#f2a7de",
            mauve = "#b889f4",
            red = "#ea7183",
            maroon = "#ea838c",
            peach = "#f39967",
            yellow = "#eaca89",
            green = "#96d382",
            teal = "#78cec1",
            sky = "#91d7e3",
            sapphire = "#68bae0",
            blue = "#739df2",
            lavender = "#a0a8f6",
            text = "#b5c1f1",
            subtext1 = "#a6b0d8",
            subtext0 = "#959ec2",
            overlay2 = "#848cad",
            overlay1 = "#717997",
            overlay0 = "#63677f",
            surface2 = "#505469",
            surface1 = "#3e4255",
            surface0 = "#2c2f40",
          },
        },
        integrations = {
          aerial = true,
          alpha = true,
          cmp = true,
          dashboard = true,
          flash = true,
          gitsigns = true,
          headlines = true,
          illuminate = true,
          indent_blankline = { enabled = true },
          leap = true,
          lsp_trouble = true,
          mason = true,
          markdown = true,
          mini = true,
          native_lsp = {
            enabled = true,
            underlines = {
              errors = { "undercurl" },
              hints = { "undercurl" },
              warnings = { "undercurl" },
              information = { "undercurl" },
            },
          },
          navic = { enabled = true, custom_bg = "lualine" },
          neotest = true,
          neotree = true,
          noice = true,
          notify = true,
          semantic_tokens = true,
          telescope = true,
          treesitter = true,
          treesitter_context = true,
          which_key = true,
        },
      }
    end,
  },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = function()
      return {
        sidebars = {
          "qf",
          "vista_kind",
          -- "terminal",
          "spectre_panel",
          "startuptime",
          "Outline",
        },
        on_highlights = function(hl, c)
          hl.CursorLineNr = { fg = c.orange, bold = true }
          hl.LineNrAbove = { fg = c.fg_gutter }
          -- hl.LineNr = { fg = c.orange, bold = true }
          hl.LineNrBelow = { fg = c.fg_gutter }
          hl.LspInlayHint = { fg = c.dark3, italic = true }
        end,
      }
    end,
  },
  { "rose-pine/neovim", name = "rose-pine" },
  { "rebelot/kanagawa.nvim" },
  -- Configure LazyVim to load the preferred colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
