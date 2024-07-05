return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {},
	config = function()
		local wk = require("which-key")

		wk.register({
			b = {
				name = "tabs",
				c = { "<cmd>BufferClose<CR>", "Close buffer" },
			},
		}, { prefix = "<leader>" })

		wk.register({
			b = {
				name = "tabs",
				c = { "<cmd>BufferClose<CR>", "Close buffer" },
			},
		}, { prefix = "" })

		wk.register({
			name = "tabs",
			["<TAB>"] = { "<cmd>BufferNext<CR>", "Next buffer" },
			["<S-TAB>"] = { "<cmd>BufferPrevious<CR>", "Previous buffer" },
		}, { prefix = "" })

		wk.register({
			d = {
				name = "debugger",
				t = { "<cmd>DapToggleBreakpoint<CR>", "Toggle breakpoint" },
				c = { "<cmd>DapContinue<CR>", "Toggle breakpoint" },
			},
		}, { prefix = "<leader>" })

		wk.register({
			l = {
				name = "lsp",
				f = { vim.lsp.buf.format, "Code format" },
				D = { vim.lsp.buf.declaration, "Go to declaration" },
				d = { vim.lsp.buf.definition, "Go to definition" },
				i = { vim.lsp.buf.implementation, "Go to implementation" },
				h = { vim.lsp.buf.hover, "Hover" },
				a = { vim.lsp.buf.code_action, "Code actions" },
				r = { vim.lsp.buf.references, "Show references" },
				c = { vim.lsp.buf.incoming_calls, "Show incoming calls" },
				o = { vim.lsp.buf.outgoing_calls, "Show outgoing calls" },
				R = { vim.lsp.buf.rename, "Rename" },
			},
		}, { prefix = "<leader>" })

		wk.register({
			name = "lsp",
			f = { vim.lsp.buf.format, "Code format" },
			h = { vim.lsp.buf.hover, "Hover" },
			a = { vim.lsp.buf.code_action, "Code actions" },
		}, { prefix = " " })

		wk.register({
			t = {
				name = "test",
				n = { "<cmd>TestNearest<CR>", "Test near test" },
				f = { "<cmd>TestFile<CR>", "Test file" },
				s = { "<cmd>TestSuite<CR>", "Test Suite" },
				l = { "<cmd>TestLast<CR>", "Retest last" },
				v = { "<cmd>TestVisit<CR>", "Test visit" },
			},
		}, { prefix = "<leader>" })

		wk.register({
			name = "files",
			f = { "<cmd>Neotree filesystem reveal left<CR>", "Open neotree" },
		}, { prefix = "" })

		wk.register({
			f = {
				name = "files",
				t = { "<cmd>Neotree toggle<CR>", "Toggle neotree" },
				o = { "<cmd>Neotree buffers<CR>", "Show buffers" },
				s = { "<cmd>Neotree git_status<CR>", "Git status" },
			},
		}, { prefix = "<leader>" })

		wk.register({
			s = {
				name = "search",
				o = { "<cmd>Telescope buffers<CR>", "Show opened files" },
				h = { "<cmd>Telescope help_tags<CR>", "Search help tags" },
				s = { "<cmd>Telescope git_status<CR>", "Show git status" },
				b = { "<cmd>Telescope git_branches<CR>", "Show branches" },
				f = { "<cmd>Telescope menufacture find_files<CR>", "Search files" },
				g = { "<cmd>Telescope menufacture live_grep<CR>", "Search grep" },
				w = { "<cmd>Telescope  menufacture grep_string<CR>", "Search grep string" },
				p = { "<cmd>Telescope  menufacture oldfiles<CR>", "Search previos files" },
			},
		}, { prefix = "<leader>" })

		wk.register({
			s = {
				name = "search",
				f = { "<cmd>Telescope menufacture find_files<CR>", "Search files" },
				g = { "<cmd>Telescope menufacture live_grep<CR>", "Search grep" },
				i = { "<cmd>set list!<CR>", "Toggle show invisible caracters" },
			},
		}, { prefix = "" })

		wk.register({
			g = {
				name = "git",
				p = { "<cmd>Gitsigns preview_hunk<CR>", "Git show preview" },
				t = { "<cmd>Gitsigns toggle_current_line_blame<CR>", "Toggle curent line blame" },
				s = { "<cmd>Gitsigns stage_hunk<CR>", "Git stage hunk" },
				r = { "<cmd>Gitsigns reset_hunk<CR>", "Git reset hunk" },
				S = { "<cmd>Gitsigns stage_buffer<CR>", "Git stage file" },
				R = { "<cmd>Gitsigns reset_buffer<CR>", "Git reset file" },
			},
		}, { prefix = "<leader>" })

		-- wk.register({
		-- 	name = "tmux/nvim navigate",
		-- 	["C-h"] = { "<cmd>TmuxNavigateLeft<CR>", "Move to left" },
		-- 	["C-j"] = { "<cmd>TmuxNavigateDown<CR>", "Move down" },
		-- 	["C-k"] = { "<cmd>TmuxNavigateUp<CR>", "Move up" },
		-- 	["C-l"] = { "<cmd>TmuxNavigateRight<CR>", "Move to right" },
		-- }, { prefix = "" })

		wk.register({
			name = "vim",
			-- ["<C-h>"] = { "<cmd>wincmd h<CR>", "Move to left" },
			-- ["<C-j>"] = { "<cmd>wincmd j<CR>", "Move down" },
			-- ["<C-k>"] = { "<cmd>wincmd k<CR>", "Move up" },
			-- ["<C-l>"] = { "<cmd>wincmd l<CR>", "Move to right" },
			["<F3>"] = { "<cmd>set hlsearch!<CR>", "Unselect" },
		}, { prefix = "" })

		wk.register({
			n = {
				name = "navigation",
			},
		}, { prefix = "<leader>" })
	end,
}
