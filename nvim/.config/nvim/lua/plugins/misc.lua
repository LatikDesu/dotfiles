return {
	{
		-- Tmux & split window navigation
		'christoomey/vim-tmux-navigator',
	},
	{
		-- Neovim plugin to improve the default vim.ui interfaces
		"stevearc/dressing.nvim",
		dependencies = { "MunifTanjim/nui.nvim" },
		opts = {},
		config = function()
			require("dressing").setup()
		end,
	},
	{
		-- Neovim notifications and LSP progress messages
		"j-hui/fidget.nvim",
	},
	{
		-- find and replace
		"windwp/nvim-spectre",
		enabled = true,
		event = "BufRead",
		keys = {
			{
				"<leader>rr",
				function()
					require("spectre").open()
				end,
				desc = "Replace",
			},
			{
				"<leader>rw",
				function()
					require("spectre").open_visual({ select_word = true })
				end,
				desc = "Replace Word",
			},
			{
				"<leader>rf",
				function()
					require("spectre").open_file_search()
				end,
				desc = "Replace Buffer",
			},
		},
	},
	{
		-- Detect tabstop and shiftwidth automatically
		'tpope/vim-sleuth',
	},
	{
		-- Powerful Git integration for Vim
		'tpope/vim-fugitive',
	},
	{
		-- GitHub integration for vim-fugitive
		'tpope/vim-rhubarb',
	},
	{
		-- Highlight todo, notes, etc in comments
		'folke/todo-comments.nvim',
		event = 'VimEnter',
		dependencies = { 'nvim-lua/plenary.nvim' },
		opts = { signs = false },
	},
	{
		-- High-performance color highlighter
		'norcalli/nvim-colorizer.lua',
		config = function()
			require('colorizer').setup()
		end,
	},
	{
		-- Lua dev tools
		"folke/lazydev.nvim",
		ft = "lua", -- only load on lua files
		opts = {
			library = {
				-- See the configuration section for more details
				-- Load luvit types when the `vim.uv` word is found
				{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
			},
		},
	},
	{
		-- Search Integration
		"folke/flash.nvim",
		event = "VeryLazy",
		---@type Flash.Config
		opts = {},
		-- stylua: ignore
		keys = {
			{ "s",     mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "Flash" },
			{ "S",     mode = { "n", "x", "o" }, function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
			{ "r",     mode = "o",               function() require("flash").remote() end,            desc = "Remote Flash" },
			{ "R",     mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
			{ "<c-s>", mode = { "c" },           function() require("flash").toggle() end,            desc = "Toggle Flash Search" },
		},
	},
	{
		-- VS Code like winbar
		"utilyre/barbecue.nvim",
		name = "barbecue",
		version = "*",
		dependencies = {
			"SmiteshP/nvim-navic",
			"nvim-tree/nvim-web-devicons", -- optional dependency
		},
		opts = {
			-- configurations go here
		},
		config = function()
			require("barbecue").setup({
				create_autocmd = false, -- prevent barbecue from updating itself automatically
			})

			vim.api.nvim_create_autocmd({
				"WinScrolled", -- or WinResized on NVIM-v0.9 and higher
				"BufWinEnter",
				"CursorHold",
				"InsertLeave",

				-- include this if you have set `show_modified` to `true`
				-- "BufModifiedSet",
			}, {
				group = vim.api.nvim_create_augroup("barbecue.updater", {}),
				callback = function()
					require("barbecue.ui").update()
				end,
			})
		end,
	},
	-- Easily comment visual regions/lines
	{
		'numToStr/Comment.nvim',
		opts = {},
		config = function()
			local opts = { noremap = true, silent = true }
			vim.keymap.set('n', '<C-_>', require('Comment.api').toggle.linewise.current, opts)
			vim.keymap.set('n', '<C-/>', require('Comment.api').toggle.linewise.current, opts)
			vim.keymap.set('v', '<C-_>', "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
				opts)
			vim.keymap.set('v', '<C-/>', "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
				opts)
		end,
	},
	{
		"echasnovski/mini.nvim",
		config = function()
			-- Better Around/Inside textobjects
			--
			-- Examples:
			--  - va)  - [V]isually select [A]round [)]paren
			--  - yinq - [Y]ank [I]nside [N]ext [']quote
			--  - ci'  - [C]hange [I]nside [']quote
			require("mini.ai").setup({ n_lines = 500 })

			-- Add/delete/replace surroundings (brackets, quotes, etc.)
			--
			-- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
			-- - sd'   - [S]urround [D]elete [']quotes
			-- - sr)'  - [S]urround [R]eplace [)] [']
			require("mini.surround").setup()

			require("mini.pairs").setup()

			-- local statusline = require("mini.statusline")
			-- statusline.setup({
			--   use_icons = vim.g.have_nerd_font,
			-- })
			-- ---@diagnostic disable-next-line: duplicate-set-field
			-- statusline.section_location = function()
			--   return "%2l:%-2v"
			-- end
		end,
	},
	{
		"echasnovski/mini.icons",
		enabled = true,
		opts = {},
		lazy = true,
	},
	-- {
	-- 	"fladson/vim-kitty",
	-- 	"MunifTanjim/nui.nvim",
	-- },
	{
		"nvchad/showkeys",
		cmd = "ShowkeysToggle",
		opts = {
			timeout = 1,
			maxkeys = 6,
			-- bottom-left, bottom-right, bottom-center, top-left, top-right, top-center
			position = "bottom-right",
		},

		keys = {
			{
				"<leader>ut",
				function()
					vim.cmd("ShowkeysToggle")
				end,
				desc = "Show key presses",
			},
		},
	},
}
