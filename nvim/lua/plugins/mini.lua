return {
	"echasnovski/mini.nvim",
	config = function()
		require("mini.ai").setup({ n_lines = 500 })
		require("mini.surround").setup()
		local statusline = require("mini.statusline")
		require("mini.pairs").setup()

		-- require("mini.basics").setup({
		-- 	options = {
		-- 		basic = true,
		-- 		-- extra_ui = true,
		-- 		win_borders = "default",
		-- 	},
		-- 	mappings = {
		-- 		basic = true,
		-- 		option_toggle_prefix = [[\]],
		-- 		windows = true,
		-- 		move_with_alt = true,
		-- 	},
		-- 	autocommands = {
		-- 		basic = true,
		-- 		relnum_in_visual_mode = true,
		-- 	},
		-- 	silent = false,
		-- })

		statusline.setup({ use_icons = vim.g.have_nerd_font })

		require("mini.sessions").setup()

		-- require("mini.completion").setup()

		-- require("mini.trailspace").setup()

		---@diagnostic disable-next-line: duplicate-set-field
		statusline.section_location = function()
			return "%2l:%-2v"
		end
	end,
}
