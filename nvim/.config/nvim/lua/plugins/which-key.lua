return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		preset = "helix",
		delay = 300,
		icons = {
			rules = false,
			breadcrumb = " ", -- symbol used in the command line area that shows your active key combo
			separator = "󱦰  ", -- symbol used between a key and it's label
			group = "󰹍 ", -- symbol prepended to a group
		},
		plugins = {
			spelling = {
				enabled = false,
			},
		},
		win = {
			height = {
				max = math.huge,
			},
		},
		spec = {
			-- Buffers
			{ "<leader>b", group = "󰓩 Buffers" },
			{ "<leader>bb", desc = "Pick buffer" },
			{ "<leader>bc", desc = "Pick close" },
			{ "<leader>bd", desc = "Delete buffer" },
			{ "<leader>bn", desc = "New buffer" },
			{ "<leader>bh", desc = "Close left" },
			{ "<leader>bl", desc = "Close right" },
			{ "<leader>bo", desc = "Close others" },
			{ "<leader>bp", desc = "Move prev" },
			{ "<leader>bf", desc = "Buffers float" },
			{ "<leader>bs", group = "Sort" },
			{ "<leader>bse", desc = "By extension" },
			{ "<leader>bsd", desc = "By directory" },
			{ "<leader>b1", desc = "Go to buffer 1" },
			{ "<leader>b2", desc = "Go to buffer 2" },
			{ "<leader>b3", desc = "Go to buffer 3" },
			{ "<leader>b4", desc = "Go to buffer 4" },
			{ "<leader>b5", desc = "Go to buffer 5" },
			{ "<leader>b6", desc = "Go to buffer 6" },
			{ "<leader>b7", desc = "Go to buffer 7" },
			{ "<leader>b8", desc = "Go to buffer 8" },
			{ "<leader>b9", desc = "Go to buffer 9" },

			-- Code
			{ "<leader>c", group = " Code" },
			{ "<leader>ca", desc = "Code action" },
			{ "<leader>cf", desc = "Format buffer" },
			{ "<leader>cl", desc = "Lint file" },
			{ "<leader>ci", desc = "Linter info" },
			{ "<leader>cs", desc = "Symbols (Trouble)" },
			{ "<leader>cR", desc = "Rename file" },

			-- Debug
			{ "<leader>d", group = " Debug" },
			{ "<leader>db", desc = "Toggle breakpoint" },
			{ "<leader>dB", desc = "Conditional breakpoint" },
			{ "<leader>dc", desc = "Continue" },
			{ "<leader>di", desc = "Step into" },
			{ "<leader>do", desc = "Step over" },
			{ "<leader>dO", desc = "Step out" },
			{ "<leader>dt", desc = "Toggle UI" },
			{ "<leader>dl", desc = "Run last" },

			-- Explorer
			{ "<leader>e", desc = " Focus Neo-tree" },

			-- Find
			{ "<leader>f", group = " Find" },
			{ "<leader>ff", desc = "Find files" },
			{ "<leader>fg", desc = "Git files" },
			{ "<leader>fr", desc = "Recent files" },
			{ "<leader>fc", desc = "Find config" },
			{ "<leader>fp", desc = "Projects" },

			-- Git
			{ "<leader>g", group = " Git" },
			{ "<leader>gg", desc = "Lazygit" },
			{ "<leader>gb", desc = "Git branches" },
			{ "<leader>gd", desc = "Git diff" },
			{ "<leader>gf", desc = "Git file history" },
			{ "<leader>gl", desc = "Git log" },
			{ "<leader>gL", desc = "Git log line" },
			{ "<leader>gs", desc = "Git status" },
			{ "<leader>gS", desc = "Git stash" },
			{ "<leader>gB", desc = "Git browse" },
			
			-- Git Hunks
			{ "<leader>G", group = " Git Hunks" },
			{ "<leader>Gp", desc = "Preview hunk" },
			{ "<leader>Gr", desc = "Reset hunk" },
			{ "<leader>GR", desc = "Reset buffer" },
			{ "<leader>Gs", desc = "Stage hunk" },
			{ "<leader>Gu", desc = "Undo stage hunk" },
			{ "<leader>Gl", desc = "Blame line" },
			{ "<leader>Gd", desc = "Git diff HEAD" },
			{ "<leader>Gj", desc = "Next hunk" },
			{ "<leader>Gk", desc = "Prev hunk" },

			-- Diagnostics
			{ "<leader>x", group = " Diagnostics" },
			{ "<leader>xx", desc = "Toggle diagnostics" },
			{ "<leader>xX", desc = "Buffer diagnostics" },
			{ "<leader>xd", desc = "Show diagnostic float" },
			{ "<leader>xq", desc = "Diagnostics list" },
			{ "<leader>xl", desc = "Location list" },
			{ "<leader>xL", desc = "Location list (Trouble)" },
			{ "<leader>xQ", desc = "Quickfix list (Trouble)" },

			-- LSP
			{ "gd", desc = "Goto definition" },
			{ "gD", desc = "Goto declaration" },
			{ "gr", desc = "References" },
			{ "gI", desc = "Goto implementation" },
			{ "gy", desc = "Type definition" },
			{ "K", desc = "Hover documentation" },

			-- Windows
			{ "<leader>w", group = "󰖲 Windows" },
			{ "<leader>wn", desc = "Write without formatting" },

			-- Search
			{ "<leader>s", group = " Search" },
			{ "<leader>sb", desc = "Buffer lines" },
			{ "<leader>sd", desc = "Diagnostics" },
			{ "<leader>sD", desc = "Buffer diagnostics" },
			{ "<leader>sh", desc = "Help pages" },
			{ "<leader>sH", desc = "Highlights" },
			{ "<leader>si", desc = "Icons" },
			{ "<leader>sj", desc = "Jumps" },
			{ "<leader>sk", desc = "Keymaps" },
			{ "<leader>sl", desc = "Location list" },
			{ "<leader>sm", desc = "Marks" },
			{ "<leader>sM", desc = "Man pages" },
			{ "<leader>sn", desc = "Notifications" },
			{ "<leader>sp", desc = "Plugin spec" },
			{ "<leader>sq", desc = "Quickfix list" },
			{ "<leader>sR", desc = "Resume" },
			{ "<leader>st", desc = "Grep" },
			{ "<leader>su", desc = "Undo history" },
			{ "<leader>sw", desc = "Grep word" },
			{ '<leader>s"', desc = "Registers" },
			{ "<leader>s/", desc = "Search history" },
			{ "<leader>sa", desc = "Autocmds" },
			{ "<leader>sc", desc = "Command history" },
			{ "<leader>sC", desc = "Commands" },

			-- UI toggles
			{ "<leader>u", group = " UI" },
			{ "<leader>ub", desc = "Toggle background" },
			{ "<leader>uc", desc = "Toggle conceal" },
			{ "<leader>uC", desc = "Colorschemes" },
			{ "<leader>ud", desc = "Toggle diagnostics" },
			{ "<leader>uD", desc = "Toggle dim" },
			{ "<leader>ug", desc = "Toggle indent" },
			{ "<leader>uh", desc = "Toggle inlay hints" },
			{ "<leader>ul", desc = "Toggle line number" },
			{ "<leader>uL", desc = "Toggle relative number" },
			{ "<leader>un", desc = "Dismiss notifications" },
			{ "<leader>us", desc = "Toggle spelling" },
			{ "<leader>ut", desc = "Show keypresses" },
			{ "<leader>uT", desc = "Toggle treesitter" },
			{ "<leader>uw", desc = "Toggle wrap" },

			-- Terminal
			{ "<leader>t", group = "󰞷 Terminal" },
			{ "<leader>tt", desc = "Open terminal" },

			-- Replace (spectre)
			{ "<leader>r", group = " Replace" },
			{ "<leader>rr", desc = "Replace in project" },
			{ "<leader>rw", desc = "Replace word" },
			{ "<leader>rf", desc = "Replace in file" },

			-- Other
			{ "<leader><leader>", desc = "Smart picker" },
			{ "<leader>/", desc = "Grep" },
			{ "<leader>:", desc = "Command history" },
			{ "<leader>.", desc = "Scratch buffer" },
			{ "<leader>n", desc = "Notification history" },
			{ "<leader>N", desc = "Neovim news" },
			{ "<leader>o", desc = "Buffers" },
			{ "<leader>p", desc = "LSP symbols" },
			{ "<leader>z", desc = "Zen mode" },
			{ "<leader>Z", desc = "Zoom" },
			{ "<leader>S", desc = "Select scratch" },
			{ "<leader>U", desc = "Toggle UndoTree" },
			{ "<leader>WS", desc = "LSP workspace symbols" },
			{ "Q", desc = "Delete buffer" },
			{ "K", desc = "Hover documentation" },
			{ "<C-n>", desc = "Toggle explorer" },
			{ "<Tab>", desc = "Next buffer" },
			{ "<S-Tab>", desc = "Prev buffer" },
			{ "[d", desc = "Prev diagnostic" },
			{ "]d", desc = "Next diagnostic" },
			{ "[h", desc = "Prev git hunk" },
			{ "]h", desc = "Next git hunk" },
			{ "s", desc = "Flash jump" },
			{ "S", desc = "Flash treesitter" },
			{ "[[", desc = "Prev reference" },
			{ "]]", desc = "Next reference" },
			
			-- Terminal mode
			{ "<Esc><Esc>", desc = "Exit terminal mode", mode = "t" },
			{ "<C-w>", desc = "Window commands", mode = "t" },
		},
	},
}
