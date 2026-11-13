return {
  {
    "vojoup/thermal",
    dev = true, -- local checkout if present, else GitHub (see dev in config/lazy.lua)
    name = "thermal",
    dependencies = { "catppuccin/nvim" },
    lazy = false,
    priority = 1000,
    config = function()
      require("thermal").setup({})
      vim.cmd.colorscheme("thermal-void")
    end,
  },
}
