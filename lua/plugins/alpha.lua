return {
	"goolord/alpha-nvim",
	dependencies = {"nvim-tree/nvim-web-devicons",},

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")
		-- local dashboard = require("alpha.themes.startify'.config") 

		dashboard.section.header.val = {
			[[                                                    ]],
			[[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
			[[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
			[[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
			[[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
			[[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
			[[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
			[[                                                    ]],
	   	}

	   	dashboard.section.buttons.val = {
			dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
			-- dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
			-- dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
			-- dashboard.button("d", "✗  Delete session", "<cmd>SessionsManager delete_session<CR>"),
			-- dashboard.button("s", "  Sessions", "<cmd>SessionManager load_session<CR>"),
			dashboard.button("r", "  Recent", ":Telescope oldfiles <CR>"),
			dashboard.button("f", "  Find", ":Telescope find_files <CR>"),
			dashboard.button("c", "  Config", ":e $MYVIMRC <CR>"),
			dashboard.button("i", "  Info", "<cmd>e ~/.config/CheatSheet.md<cr>"),
			dashboard.button("q", "✗  Quit", ":qa<CR>"),
	   }
	   
			local function footer()
				return "Haskell can suck mo' nads YUT YUT!!"
			end
	   
	   dashboard.section.footer.val = footer()
	   
	--    dashboard.section.footer.opts.hl = "Type"
	--    dashboard.section.header.opts.hl = "Include"
	--    dashboard.section.buttons.opts.hl = "Keyword"
	   
	--    dashboard.opts.opts.noautocmd = true
	   alpha.setup(dashboard.opts)

	
	end,
	-- references:
	-- https://github.com/benbrastmckie/.config/tree/master/nvim/lua/user
}