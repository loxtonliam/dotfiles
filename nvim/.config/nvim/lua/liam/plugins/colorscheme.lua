return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				auto_integrations = true,
				flavour = "macchiato", -- latte, frappe, macchiato, mocha
				background = { -- :h background
					light = "latte",
					dark = "mocha",
				},
				transparent_background = false, -- disables setting the background color.
				float = {
					transparent = false, -- enable transparent floating windows
					solid = false, -- use solid styling for floating windows, see |winborder|
				},
				term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
				dim_inactive = {
					enabled = false, -- dims the background color of inactive window
					shade = "dark",
					percentage = 0.15, -- percentage of the shade to apply to the inactive window
				},
				no_italic = false, -- Force no italic
				no_bold = false, -- Force no bold
				no_underline = false, -- Force no underline
				styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
					comments = { "italic" }, -- Change the style of comments
					conditionals = { "italic" },
					loops = {},
					functions = {},
					keywords = {},
					strings = {},
					variables = {},
					numbers = {},
					booleans = {},
					properties = {},
					types = {},
					operators = {},
					-- miscs = {}, -- Uncomment to turn off hard-coded styles
				},
				lsp_styles = { -- Handles the style of specific lsp hl groups (see `:h lsp-highlight`).
					virtual_text = {
						errors = { "italic" },
						hints = { "italic" },
						warnings = { "italic" },
						information = { "italic" },
						ok = { "italic" },
					},
					underlines = {
						errors = { "underline" },
						hints = { "underline" },
						warnings = { "underline" },
						information = { "underline" },
						ok = { "underline" },
					},
					inlay_hints = {
						background = true,
					},
				},
				color_overrides = {},
				custom_highlights = {},
				auto_integrations = true,
				integrations = {
					cmp = true,
					gitsigns = true,
					nvimtree = true,
					notify = false,
					mini = {
						enabled = true,
						indentscope_color = "",
					},
					-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
				},
			})
			vim.cmd.colorscheme("catppuccin-nvim")
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	-- setup must be called before loading
	{
		"sainnhe/everforest",
		lazy = false,
		priority = 1000,
		config = function()
			-- Optionally configure and load the colorscheme
			-- directly inside the plugin declaration.
			vim.g.everforest_enable_italic = true
		end,
	},
	{
		"sainnhe/sonokai",
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.sonokai_style = "andromeda"
			vim.g.better_performance = 1

			-- Optionally configure and load the colorscheme
			-- directly inside the plugin declaration.
			vim.g.sonokai_enable_italic = true
		end,
	},
	{
		"AlexvZyl/nordic.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("nordic").setup({
				-- This callback can be used to override the colors used in the base palette.
				on_palette = function(palette) end,
				-- This callback can be used to override the colors used in the extended palette.
				after_palette = function(palette) end,
				-- This callback can be used to override highlights before they are applied.
				on_highlight = function(highlights, palette) end,
				-- Enable bold keywords.
				bold_keywords = false,
				-- Enable italic comments.
				italic_comments = true,
				-- Enable editor background transparency.
				transparent = {
					-- Enable transparent background.
					bg = false,
					-- Enable transparent background for floating windows.
					float = false,
				},
				-- Enable brighter float border.
				bright_border = false,
				-- Reduce the overall amount of blue in the theme (diverges from base Nord).
				reduced_blue = true,
				-- Swap the dark background with the normal one.
				swap_backgrounds = false,
				-- Cursorline options.
				cursorline = {
					-- Bold font in cursorline.
					bold = false,
					-- Bold cursorline number.
					bold_number = true,
					-- Available styles: 'dark', 'light'.
					theme = "dark",
					-- Blending the cursorline bg with the buffer bg.
					blend = 0.85,
				},
				-- Visual selection options.
				visual = {
					-- Bold font in visual selection.
					bold = false,
					-- Bold visual selection number.
					bold_number = true,
					-- Available styles: 'dark', 'light'.
					theme = "dark",
					-- Blending the visual selection bg with the buffer bg.
					blend = 0.85,
				},
				noice = {
					-- Available styles: `classic`, `flat`.
					style = "classic",
				},
				telescope = {
					-- Available styles: `classic`, `flat`.
					style = "flat",
				},
				leap = {
					-- Dims the backdrop when using leap.
					dim_backdrop = false,
				},
				ts_context = {
					-- Enables dark background for treesitter-context window
					dark_background = true,
				},
			})
		end,
	},
	{
		"taigrr/cyberpunk.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			transparent = false, -- set true for transparent background
			italic_comments = false, -- italicize comments
			italic_keywords = false, -- italicize keywords
			bold_functions = false, -- bold function names
			bold_keywords = true, -- bold keywords (default)
			overrides = {}, -- override specific highlight groups
		},
	},
}
