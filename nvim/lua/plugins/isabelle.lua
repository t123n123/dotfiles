return {
	{
		"Treeniks/isabelle-syn.nvim",
	},
	{
		"Treeniks/isabelle-lsp.nvim",
		branch = "isabelle-language-server",
		dependencies = {
			"neovim/nvim-lspconfig",
		},
		config = function()
			vim.filetype.add({
				extension = {
					thy = "isabelle",
				},
			})

			require("isabelle-lsp").setup({
				unicode_symbols_output = true,
				unicode_symbols_edits = true,
				isabelle_path = "/home/mihai/repos/mirror-isabelle/bin/isabelle",
			})

			require("lspconfig").isabelle.setup({})
		end,
	},
}
