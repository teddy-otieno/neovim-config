require("plugins")
require('lsp')
require('keybindings')
require('configs')

function setup_ui_config()
    local o 		 = vim.o
    o.incsearch 	 = true
    o.hlsearch 		 = true
    o.smartcase 	 = true
    o.laststatus 	 = 2
    o.tabstop 		 = 4
    o.shiftwidth 	 = 4
    o.smartindent 	 = true
    o.number 		 = true
    o.relativenumber = true
    o.termguicolors  = true
    o.wrap 			 = false
    o.list           = true
    o.listchars      = "eol:¬,tab:+·,trail:~,extends:>,precedes:<,space:␣,multispace:---+"
    vim.cmd("set guifont=Victor\\ Mono:h9")
    vim.cmd("colorscheme tokyonight")
    vim.cmd("set background=dark")
    vim.cmd("set laststatus=3")
	vim.api.nvim_create_autocmd("BufEnter", {pattern={"*.tsx", "*.ts", "*.html", "*.css"}, callback=_G.space_2})

    vim.cmd("autocmd BufNewFile,BufRead *.fs,*.fsx,*.fsi set filetype=fsharp")
end

function _G.space_2() 
	local o = vim.o
	o.tabstop = 2
	o.shiftwidth = 2
	o.expandtab = true
end

function _G.space_4()
	local o = vim.o
	o.tabstop = 4
	o.shiftwidth = 4
	o.expandtab = true
end

function _G.tab_2() 
	local o = vim.o
	o.tabstop = 2
	o.shiftwidth = 2
end

function _G.tab_4()
	local o = vim.o
	o.tabstop = 4
	o.shiftwidth = 4
end

setup_ui_config()
