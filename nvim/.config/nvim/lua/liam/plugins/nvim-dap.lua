return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"rcarriga/nvim-dap-ui",
		"mfussenegger/nvim-dap-python",
		"theHamsta/nvim-dap-virtual-text",
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")
		local dap_python = require("dap-python")

		dapui.setup({})
		require("nvim-dap-virtual-text").setup({
			commented = true,
		})

		dap_python.setup("python3")

		vim.fn.sign_define("DapBreakpoint", {
			text = "",
			texthl = "DiagnosticsSignError",
			linehl = "",
			numhl = "",
		})
		vim.fn.sign_define("DapBreakpointRejected", {
			text = "",
			texthl = "DiagnosticsSignError",
			linehl = "",
			numhl = "",
		})

		vim.fn.sign_define("DapStopped", {
			text = "",
			texthl = "DiagnosticsSignWarn",
			linehl = "Visual",
			numhl = "DiagnosticsSignWarn",
		})

		--auto open dap ui
		dap.listeners.after.event_initialized["dapui_config"] = function()
			dapui.open()
		end

		local opts = { noremap = true, silent = true }

		--toggle breakpoint
		vim.keymap.set("n", "<leader>db", function()
			dap.toggle_breakpoint()
		end, opts)

		-- Continue
		vim.keymap.set("n", "<leader>dc", function()
			dap.continue()
		end, opts)

		-- Step Over
		vim.keymap.set("n", "<leader>do", function()
			dap.step_over()
		end, opts)

		-- Step Into
		vim.keymap.set("n", "<leader>di", function()
			dap.step_into()
		end, opts)

		-- Step Out
		vim.keymap.set("n", "<leader>dO", function()
			dap.step_out()
		end, opts, { desc = "step out" })

		-- Terminate debug
		vim.keymap.set("n", "<leader>dq", function()
			dap.terminate()
		end, opts)

		-- Toggle Dap Ui
		vim.keymap.set("n", "<leader>du", function()
			dapui.toggle()
		end, opts)
	end,
}
