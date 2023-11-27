local Util = require("lazyvim.util")

return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader>?",
      function()
        require("telescope.builtin").oldfiles()
      end,
      desc = "Find Recently open files",
    },
    -- change a keymap
    {
      "<leader>/",
      function()
        require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
          winblend = 10,
          previewer = false,
        }))
      end,
      desc = "Find in buffer",
    },
    {
      "<leader>sr",
      function()
        require("telescope.builtin").resume()
      end,
      desc = "Resume last search",
    },
    {
      "<leader>sr",
      function()
        require("telescope.builtin").resume()
      end,
      desc = "Resume last search",
    },
  },
  -- { "<leader>ff", Util.telescope("files"), { cwd = false }, desc = "Find Files (cwd)" },
}
