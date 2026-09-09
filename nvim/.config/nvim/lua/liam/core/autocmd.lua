vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		local root = vim.fs.root(0, ".git")
		if root then
			vim.fn.chdir(root)
		else
			local file = vim.fn.expand("%:p")
			if file ~= "" then
				vim.fn.chdir(vim.fn.fnamemodify(file, ":h"))
			end
		end
	end,
})
