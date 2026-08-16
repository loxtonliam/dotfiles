return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status") -- configure lazy pending updates count

    --get cat pallete
    local C = require("catppuccin.palettes").get_palette "mocha"
    local transparent_bg = "NONE"

    -- transparent_bg = opts.transparent_background and "NONE" or C.mantle
  local catpuccin_lualine = {
    normal = {
        a = { bg = C.blue, fg = C.mantle, gui = "bold" },
        b = { bg = C.surface0, fg = C.blue },
        c = { bg = transparent_bg, fg = C.text },
    },

    insert = {
        a = { bg = C.green, fg = C.base, gui = "bold" },
        b = { bg = C.surface0, fg = C.green },
    },

    terminal = {
        a = { bg = C.green, fg = C.base, gui = "bold" },
        b = { bg = C.surface0, fg = C.green },
    },

    command = {
        a = { bg = C.peach, fg = C.base, gui = "bold" },
        b = { bg = C.surface0, fg = C.peach },
    },
    visual = {
        a = { bg = C.mauve, fg = C.base, gui = "bold" },
        b = { bg = C.surface0, fg = C.mauve },
    },
    replace = {
        a = { bg = C.red, fg = C.base, gui = "bold" },
        b = { bg = C.surface0, fg = C.red },
    },
    inactive = {
        a = { bg = transparent_bg, fg = C.blue },
        b = { bg = transparent_bg, fg = C.surface1, gui = "bold" },
        c = { bg = transparent_bg, fg = C.overlay0 },
    },
    }

  --configure lualine with theme
    lualine.setup({
      options = {
        theme = catpuccin_lualine,
      },
      sections = {
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = {fg = "#ff9e64"},
          },
          {"encoding"},
          {"fileformat"},
          {"filetype"},
        },
      },
    })
  end,
}
