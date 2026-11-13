return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    quickfile = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    explorer = {
      enabled = true,
    },
    lazygit = {
      config = {
        os = {
          edit = 'test -z "$NVIM"; and nvim -- {{filename}}; or begin; nvim --server "$NVIM" --remote-send "q"; and nvim --server "$NVIM" --remote {{filename}}; end',
        },
      },
    },
    picker = {
      previewers = {
        diff = { style = "fancy" },
      },
      sources = {
        explorer = {
          hidden = true,
          jump = { close = true },
          layout = {
            preset = "vertical",
          },
        },
      },
    },
    zen = {
      enabled = true,
      win = {
        width = function()
          return vim.o.columns >= 160 and 120 or 0
        end,
        backdrop = {
          transparent = false,
          blend = 99,
        },
      },
      toggles = {
        dim = false,
        git_signs = false,
        diagnostics = false,
        line_number = true,
        relative_number = false,
        signcolumn = "no",
        indent = true,
      },
    },
    dashboard = {
      preset = {
        ---@type snacks.dashboard.Item[]
        keys = {
          { icon = " ", key = "p", desc = "Open Pull Requests", action = ":Atlas pulls" },
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          {
            icon = " ",
            key = "c",
            desc = "Config",
            action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
          },
          { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
        header = [[
                                                                             
               ████ ██████           █████      ██                     
              ███████████             █████                             
              █████████ ███████████████████ ███   ███████████   
             █████████  ███    █████████████ █████ ██████████████   
            █████████ ██████████ █████████ █████ █████ ████ █████   
          ███████████ ███    ███ █████████ █████ █████ ████ █████  
         ██████  █████████████████████ ████ █████ █████ ████ ██████ 
      ]],
      },
      sections = {
        { section = "header" },
        {
          section = "terminal",
          cmd = "pwd",
          padding = 1,
          hl = "special",
        },
        { section = "keys", gap = 1, padding = 1 },
        { section = "startup" },
      },
    },
  },
}
