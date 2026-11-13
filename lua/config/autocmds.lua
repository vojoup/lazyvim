-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Disable the concealing in some file formats
-- The default conceallevel is 3 in LazyVim
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "json", "jsonc", "markdown" },
  callback = function()
    vim.wo.conceallevel = 0
  end,
})

-- Markdown reading mode. Markdown opens as stock LazyVim; <leader>uR toggles, per buffer:
-- cursor line rendered too, plain headings, diagnostics hidden, Snacks zen window.
-- Hiding happens in the display handlers, keyed on b:md_reading, so the global
-- diagnostic state (and <leader>ud in every other buffer) is never touched.
for _, handler in pairs(vim.diagnostic.handlers) do
  local show = handler.show
  if show then
    handler.show = function(ns, buf, ...)
      if not vim.b[buf].md_reading then
        show(ns, buf, ...)
      end
    end
  end
end

local reading_toggle
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function(ev)
    -- acts on the current buffer; the map is buffer-local so that is always markdown
    reading_toggle = reading_toggle
      or Snacks.toggle({
        name = "Markdown Reading Mode",
        get = function()
          return vim.b.md_reading == true
        end,
        set = function(on)
          -- zen first: render-markdown updates the current window, which must outlive this call
          local zen = Snacks.zen.win
          if on ~= (zen ~= nil and zen:valid()) then
            Snacks.zen() -- opens, or closes if open
          end
          vim.b.md_reading = on
          -- shortcut: edits render-markdown's per-buffer config through its internal state
          -- module (no public per-buffer API), revisit if a plugin update breaks this
          local rm = require("render-markdown")
          local cfg = require("render-markdown.state").get(vim.api.nvim_get_current_buf())
          cfg.anti_conceal.enabled = not on
          cfg.heading.enabled = not on
          rm.set_buf(on or rm.get()) -- off: back to whatever <leader>um says
          vim.diagnostic[on and "hide" or "show"](nil, 0)
        end,
      })
    reading_toggle:map("<leader>uR", { buffer = ev.buf })
  end,
})
