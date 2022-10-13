
local packer = require('packer')

function config_neo_tree()
	require("neo-tree").setup({
		popup_border_style = "rounded",
		enable_git_status = true,
		enable_diagnostics = true,
		filesystem = {
			filters = { --These filters are applied to both browsing and searching
			show_hidden = false,
			respect_gitignore = true,
		},
		follow_current_file = false, -- This will find and focus the file in the
		-- active buffer every time the current file is changed while the tree is open.
		use_libuv_file_watcher = false, -- This will use the OS level file watchers
		-- to detect changes instead of relying on nvim autocmd events.
		window = {
			position = "right",
			width = 30,
			mappings = {
				["<2-LeftMouse>"] = "open",
				["<cr>"] = "open",
				["S"] = "open_split",
				["s"] = "open_vsplit",
				["C"] = "close_node",
				["<bs>"] = "navigate_up",
				["."] = "set_root",
				["H"] = "toggle_hidden",
				["I"] = "toggle_gitignore",
				["R"] = "refresh",
				["/"] = "filter_as_you_type",
				--["/"] = "none" -- Assigning a key to "none" will remove the default mapping
				["f"] = "filter_on_submit",
				["<c-x>"] = "clear_filter",
				["a"] = "add",
				["d"] = "delete",
				["r"] = "rename",
				["c"] = "copy_to_clipboard",
				["x"] = "cut_to_clipboard",
				["p"] = "paste_from_clipboard",
			}
		}
	},
	buffers = {
		show_unloaded = true,
		window = {
			position = "right",
			mappings = {
				["<2-LeftMouse>"] = "open",
				["<cr>"] = "open",
				["S"] = "open_split",
				["s"] = "open_vsplit",
				["<bs>"] = "navigate_up",
				["."] = "set_root",
				["R"] = "refresh",
				["a"] = "add",
				["d"] = "delete",
				["r"] = "rename",
				["c"] = "copy_to_clipboard",
				["x"] = "cut_to_clipboard",
				["p"] = "paste_from_clipboard",
				["bd"] = "buffer_delete",
			}
		},
	},
	git_status = {
		window = {
			position = "float",
			mappings = {
				["<2-LeftMouse>"] = "open",
				["<cr>"] = "open",
				["S"] = "open_split",
				["s"] = "open_vsplit",
				["C"] = "close_node",
				["R"] = "refresh",
				["d"] = "delete",
				["r"] = "rename",
				["c"] = "copy_to_clipboard",
				["x"] = "cut_to_clipboard",
				["p"] = "paste_from_clipboard",
				["A"]  = "git_add_all",
				["gu"] = "git_unstage_file",
				["ga"] = "git_add_file",
				["gr"] = "git_revert_file",
				["gc"] = "git_commit",
				["gp"] = "git_push",
				["gg"] = "git_commit_and_push",
			}
		}
	}
})
vim.cmd([[nnoremap \ :NeoTreeReveal<cr>]])
end

packer.startup(function()
	use 'wbthomason/packer.nvim'
	use 'phanviet/vim-monokai-pro'
	use 'neovim/nvim-lspconfig'
	use {'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} }}
	use 'nvim-treesitter/nvim-treesitter'
	use 'sainnhe/gruvbox-material'
	use 'sbdchd/neoformat'

	--Completions
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-nvim-lua'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'jiangmiao/auto-pairs'
	use 'hrsh7th/vim-vsnip'
 	use 'tpope/vim-fugitive'

	use 'airblade/vim-gitgutter'
	use 'mattn/emmet-vim'
	use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use 'drewtempelmeyer/palenight.vim'
	use 'Shougo/defx.nvim'
	use {
		'nvim-neo-tree/neo-tree.nvim',
		requires = {
		  'kyazdani42/nvim-web-devicons', -- optional, for file NeoTreeDirectoryIcon
		  "MunifTanjim/nui.nvim",
		  "nvim-lua/plenary.nvim",
		},
		config = config_neo_tree
	}
	use "lukas-reineke/indent-blankline.nvim"
	use 'navarasu/onedark.nvim'
	use 'elixir-editors/vim-elixir'
	use 'zhou13/vim-easyescape'
	use 'tomlion/vim-solidity'
	use "lukas-reineke/lsp-format.nvim"
	use "adelarsq/neofsharp.vim"
	use 'folke/tokyonight.nvim'
	use { 'folke/trouble.nvim',
    requires = "kyazdani42/nvim-web-devicons",
    config = function() 
      require("trouble").setup {}
    end 
  }

  use 'marko-cerovac/material.nvim'
end)


