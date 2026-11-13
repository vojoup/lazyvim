return {
  {
    "vojoup/thermal",
    dir = vim.fn.expand("~/my-things/thermal"),
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
