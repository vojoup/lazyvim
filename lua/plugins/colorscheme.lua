return {
  {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    name = "catppuccin",
    opts = {
      term_colors = true,
      lsp_styles = {
        underlines = {
          errors = { "undercurl" },
          hints = { "undercurl" },
          warnings = { "undercurl" },
          information = { "undercurl" },
        },
      },
      integrations = {
        aerial = true,
        alpha = true,
        cmp = true,
        dashboard = true,
        flash = true,
        fzf = true,
        grug_far = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        mini = true,
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        snacks = true,
        telescope = true,
        treesitter_context = true,
        which_key = true,
      },
      color_overrides = {
        all = {
          mantle = "#0e0f16",
          crust = "#0e0f16",
          base = "#000000",
          -- rosewater = "#efc9c2",
          -- flamingo = "#ebb2b2",
          -- pink = "#f2a7de",
          -- mauve = "#b889f4",
          -- red = "#ea7183",
          -- maroon = "#ea838c",
          -- peach = "#f39967",
          -- yellow = "#eaca89",
          -- green = "#96d382",
          -- teal = "#78cec1",
          -- sky = "#91d7e3",
          -- sapphire = "#68bae0",
          -- blue = "#739df2",
          -- lavender = "#a0a8f6",
          text = "#b5c1f1",
          -- subtext1 = "#a6b0d8",
          -- subtext0 = "#959ec2",
          -- overlay2 = "#848cad",
          -- overlay1 = "#717997",
          -- overlay0 = "#63677f",
          -- surface2 = "#505469",
          -- surface1 = "#3e4255",
          -- surface0 = "#2c2f40",
        },
      },
    },
    -- config = function(_, opts)
    --   require("catppuccin").setup(opts)
    --   vim.cmd.colorscheme("catppuccin-nvim")
    -- end,
  },
  -- {
  --   "craftzdog/solarized-osaka.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {},
  -- },
  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = function()
  --     return {
  --       sidebars = {
  --         "qf",
  --         "vista_kind",
  --         -- "terminal",
  --         "spectre_panel",
  --         "startuptime",
  --         "Outline",
  --       },
  --       on_highlights = function(hl, c)
  --         hl.CursorLineNr = { fg = c.orange, bold = true }
  --         hl.LineNrAbove = { fg = c.fg_gutter }
  --         -- hl.LineNr = { fg = c.orange, bold = true }
  --         hl.LineNrBelow = { fg = c.fg_gutter }
  --         hl.LspInlayHint = { fg = c.dark3, italic = true }
  --       end,
  --     }
  --   end,
  -- },
  -- { "rose-pine/neovim", name = "rose-pine" },
  { "rebelot/kanagawa.nvim" },
  { "yorumicolors/yorumi.nvim" },
  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
  -- {
  --   "Ferouk/bearded-nvim",
  --   name = "bearded",
  --   priority = 1000,
  --   build = function()
  --     -- Generate helptags so :h bearded-theme works
  --     local doc = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy", "bearded", "doc")
  --     pcall(vim.cmd, "helptags " .. doc)
  --   end,
  --   config = function()
  --     require("bearded").setup({
  --       flavor = "arc-blueberry", -- any flavor slug
  --     })
  --     vim.cmd.colorscheme("bearded")
  --   end,
  -- },
  -- Configure LazyVim to load the preferred colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "moonfly",
    },
  },
}
