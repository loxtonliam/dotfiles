return {
  "nvim-treesitter/nvim-treesitter",
  event = {"BufReadPre","BufNewFile"},
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    --import nvim-treesitter plugin
    local treesitter = require("nvim-treesitter")

    treesitter.setup({
      highlight = {
        enable = true,
      },

      indent = {enable = true},

      autotag = {enable = true,
    },
      ensure_installed = {
        "json",
        "yaml",
        "html",
        "css",
        "markdown",
        "markdown_inline",
        "svelte",
        "bash",
        "zsh",
        "lua",
        "vim",
        "gitignore",
        "vimdoc",
        "c",
        "python",
        "r",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>"
        },
      },
    })
  end,
}
