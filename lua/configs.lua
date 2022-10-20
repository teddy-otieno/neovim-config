require('lualine').setup()

require('indent_blankline').setup {
	show_current_context_start = true,
	show_current_context = true,
}

require("symbols-outline").setup {}
require("bufferline").setup {}
require("lspsaga").init_lsp_saga()
require "nvim-treesitter.configs".setup {
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false
	}
}
--require("onedark").load()
