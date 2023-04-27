local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
	[[ ███▄    █  ██▒   █▓  ██▓ ███▄ ▄███▓]],
	[[ ██ ▀█   █ ▓██░   █▒▒▓██▒▓██▒▀█▀ ██▒]],
	[[▓██  ▀█ ██▒ ▓██  █▒░▒▒██▒▓██    ▓██░]],
	[[▓██▒  ▐▌██▒  ▒██ █░░░░██░▒██    ▒██ ]],
	[[▒██░   ▓██░   ▒▀█░  ░░██░▒██▒   ░██▒]],
	[[░ ▒░   ▒ ▒    ░ ▐░   ░▓  ░ ▒░   ░  ░]],
	[[░ ░░   ░ ▒░   ░ ░░  ░ ▒ ░░  ░      ░]],
	[[   ░   ░ ░       ░  ░ ▒ ░░      ░   ]],
	[[         ░       ░    ░         ░   ]],
	[[             noggin ed.             ]],
}
dashboard.section.buttons.val = {
	dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
	dashboard.button("n", " " .. " New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("p", " " .. " Find project", ":lua require('telescope').extensions.projects.projects()<CR>"),
	dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
	dashboard.button("g", " " .. " Grep text", ":Telescope live_grep <CR>"),
	dashboard.button("c", " " .. " Config", ":e $XDG_CONFIG_HOME/nvim <CR>"),
	dashboard.button("q", " " .. " Quit", ":qa<CR>"),
}
local function footer()
	return "Functions can be accessed by pressing <SPACE>"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)