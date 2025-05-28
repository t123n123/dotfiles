local set = vim.keymap.set

-- highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})

set("n", "<esc>", "<cmd>nohlsearch<cr>")
set("t", "<esc><esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
set({ "n", "t" }, "<M-t>", "<cmd>ToggleTerm<cr>", { desc = "Open terminal" })
set({ "n", "t" }, "<M-f>", "<cmd>Neotree toggle<cr>", { desc = "Open files" })
set({ "n", "t" }, "\\", "<cmd>Neotree toggle<cr>", { desc = "Open files" })
set({ "n" }, "<leader>f", function()
	require("conform").format({ async = true, lsp_format = "fallback" })
end, { desc = "Format buffer" })
