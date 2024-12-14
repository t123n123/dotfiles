return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		main = "nvim-treesitter.configs",
		opts = {
			ensure_installed = { "lua" },
			auto_install = false,
			highlight = {
				enable = true,
			},
			indent = { enable = true },
			playground = {
				enable = true,
				updatetime = 25,

				keybindings = {
					toggle_query_editor = "o",
					toggle_hl_groups = "i",
					toggle_injected_languages = "t",
					toggle_anonymous_nodes = "a",
					toggle_language_display = "I",
					focus_language = "f",
					unfocus_language = "F",
					update = "R",
					goto_node = "<cr>",
					show_help = "?",
				},
			},
		},
		config = function(_, opts)
			local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

			require("nvim-treesitter.install").prefer_git = true

			require("nvim-treesitter.configs").setup(opts)
		end,
	},
}
