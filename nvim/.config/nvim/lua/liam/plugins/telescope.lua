return {
  "nvim-telescope/telescope.nvim",
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {'nvim-telescope/telescope-fzf-native.nvim',build = 'make'},
    "nvim-tree/nvim-web-devicons",
    "folke/todo-comments.nvim",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
        defaults = {
          path_display = {"smart"},
          -- Default configuration for telescope goes here:
          -- config_key = value,
          mappings = {
            i = {
              -- map actions.which_key to <C-h> (default: <C-/>)
              -- actions.which_key shows the mappings for your picker,
              -- e.g. git_{create, delete, ...}_branch for the git_branches picker
              ["<C-k>"] = actions.move_selection_previous, --prev result
              ["<C-j>"] = actions.move_selection_next, --next result
              ["<C-q>"] = function()
                actions.send_selected_to_qflist(vim.fn.line("."))
                actions.open_qflist()
              end,
            },
          },
        },
        pickers = {
          -- Default configuration for builtin pickers goes here:
          -- picker_name = {
          --   picker_config_key = value,
          --   ...
          -- }
          -- Now the picker_config_key will be applied every time you call this
          -- builtin picker
        },
        extensions = {
          -- Your extension configuration goes here:
          -- extension_name = {
          --   extension_config_key = value,
          -- }
          -- please take a look at the readme of the extension you want to configure
        },
        
      })

      telescope.load_extension("fzf")

      local keymap = vim.keymap

      keymap.set("n","<leader>ff","<cmd>Telescope find_files<cr>",{desc = "Fuzzy find files in cwd"})
      keymap.set("n","<leader>fr","<cmd>Telescope oldfiles<cr>",{desc = "Fuzzy find recent files"})
      keymap.set("n","<leader>fs","<cmd>Telescope live_grep<cr>",{desc = "Find string in cwd"})
      keymap.set("n","<leader>fc","<cmd>Telescope grep_string<cr>",{desc = "Find string under cursor"})
      keymap.set("n","<leader>ft","<cmd>TodoTelescope<cr>",{desc = "Find todos"})
      

  end,

}
