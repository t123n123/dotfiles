return {
	{
		"echasnovski/mini.nvim",
		config = function()
			require("mini.statusline").setup()
			require("mini.ai").setup()
			require("mini.comment").setup()
			require("mini.pairs").setup()
			require("mini.move").setup()
			require("mini.notify").setup()
			require("mini.cursorword").setup()
			require("mini.icons").setup()
			-- require("mini.starter").setup()
		end,
	},
}
