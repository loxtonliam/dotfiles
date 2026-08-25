return {
	"voldikss/vim-floaterm",
	cmd = { "FloatermToggle", "FloatermNew", "FloatermSend" },
	keys = {
		{ "<leader>zt", "<cmd>FloatermToggle<CR>", mode = { "n", "t" }, desc = "Toggle Floaterm" },
		{ "<leader>zl", "<cmd>FloatermPrev<CR>", mode = { "n", "t" }, desc = "Previous Floaterm" },
		{ "<leader>zh", "<cmd>FloatermNext<CR>", mode = { "n", "t" }, desc = "Next Floaterm" },
		{ "<leader>zn", "<cmd>FloatermNew<CR>", mode = { "n", "t" }, desc = "New Floaterm" },
	},
	init = function()
		-- Dimensions and positioning
		vim.g.floaterm_width = 0.8
		vim.g.floaterm_height = 0.8
		vim.g.floaterm_wintype = "float"
		vim.g.floaterm_position = "center"

		-- Optional styling
		vim.g.floaterm_title = "Terminal ($1/$2)"
		vim.g.floaterm_autoclose = 1
	end,
}
