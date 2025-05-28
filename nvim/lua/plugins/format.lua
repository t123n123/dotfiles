return {
	{ "NMAC427/guess-indent.nvim" },

	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		cmd = { "ConformInfo" },
		opts = {
			notify_on_error = false,
			format_on_save = function(bufnr)
				local disable = {}
				if disable[vim.bo[bufnr].filetype] then
					return nil
				else
					return {
						timeout_ns = 500,
						lsp_format = "fallback",
					}
				end
			end,
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "black" },
				c = { "clang-format" },
			},
		},
	},
}
