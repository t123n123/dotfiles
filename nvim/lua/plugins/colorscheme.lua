return {
	{ "EdenEast/nightfox.nvim" }, -- lazy
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			-- vim.cmd([[colorscheme tokyonight-night]])
		end,
	},

	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			-- vim.cmd("colorscheme kanagawa-dragon")
		end,
	},

	{
		"neanias/everforest-nvim",
		version = false,
		lazy = false,
		priority = 1000,
		config = function()
			-- require("everforest").setup({
			-- 	background = "hard",
			-- 	disable_italic_comments = true,
			--
			-- })
			--
			-- vim.o.background = "dark"
			-- vim.cmd([[colorscheme everforest]])
		end, -- lua/plugins/rose-pine.lua
	},

	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			-- vim.cmd("colorscheme rose-pine")
		end,
	},
}
