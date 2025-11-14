return {
	{
		'sainnhe/everforest',
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.everforest_background = 'hard'
			vim.g.everforest_enable_italic = false
			vim.g.everforest_transparent_background = 0
			vim.opt.background = 'dark'
			vim.cmd.colorscheme('everforest')

			-- Toggle background transparency
			local bg_transparent = 2

			local toggle_transparency = function()
				bg_transparent = bg_transparent == 2 and 0 or 2
				vim.g.everforest_transparent_background = bg_transparent
				vim.cmd.colorscheme('everforest')
			end

			vim.keymap.set('n', '<leader>bg', toggle_transparency, { noremap = true, silent = true }, { desc = "Toggle background transparency" })
		end
	}
}
