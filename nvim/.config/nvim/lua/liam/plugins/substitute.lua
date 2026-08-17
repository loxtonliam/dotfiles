return {
  "gbprod/substitute.nvim",
  event = {"BufReadPre","BufNewFile"},
  config = function()
    local substitute = require("substitute")

    substitute.setup()

    local keymap = vim.keymap

    keymap.set("n", "s", require('substitute').operator, { desc = "Substitute with motion"})
    keymap.set("n", "ss", require('substitute').line, { desc = "Substitute Line"})
    keymap.set("n", "S", require('substitute').eol, { desc = "Substitute to end of line"})
    keymap.set("x", "s", require('substitute').visual, { desc = "Subtitute in visual mode"})
  end,
}
