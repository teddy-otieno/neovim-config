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
  o.list           = false
  -- o.listchars      = "eol:¬,tab:+·,trail:~,extends:>,precedes:<,space:␣,multispace:---+"
  o.background 	 = "dark"
  o.laststatus     = 3

  vim.cmd("set guifont=Dank\\ Mono:h10")
  vim.cmd("colorscheme gruvbox-material")

	vim.api.nvim_create_autocmd("BufEnter", {pattern={"*.tsx", "*.ts", "*.html", "*.css", "*.ex", "*.exs"}, callback=_G.space_2})
  vim.cmd("autocmd BufNewFile,BufRead *.fs,*.fsx,*.fsi set filetype=fsharp")

  if vim.g.neovide then
    -- Neovim config
    vim.g.neovide_hide_mouse_when_typing = true
    vim.g.neovide_cursor_vfx_mode = "railgun"
  end
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

function _G.fullscreen()
    if vim.g.neovide then
        vim.g.neovide_fullscreen = true
    end
end

setup_ui_config()
