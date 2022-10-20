-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\Otieno\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\Otieno\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\Otieno\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\Otieno\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\Otieno\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["auto-pairs"] = {
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["defx.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\defx.nvim",
    url = "https://github.com/Shougo/defx.nvim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gruvbox-material",
    url = "https://github.com/sainnhe/gruvbox-material"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp-format.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lsp-format.nvim",
    url = "https://github.com/lukas-reineke/lsp-format.nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\nA\0\0\4\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\1\2\0004\3\0\0B\1\2\1K\0\1\0\18init_lsp_saga\flspsaga\frequire\0" },
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["material.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\material.nvim",
    url = "https://github.com/marko-cerovac/material.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\n√\t\0\0\6\0\20\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0005\5\b\0=\5\t\4=\4\n\3=\3\v\0025\3\f\0005\4\r\0005\5\14\0=\5\t\4=\4\n\3=\3\15\0025\3\18\0005\4\16\0005\5\17\0=\5\t\4=\4\n\3=\3\19\2B\0\2\1K\0\1\0\15git_status\1\0\0\1\0\18\6x\21cut_to_clipboard\aga\17git_add_file\6s\16open_vsplit\agu\21git_unstage_file\6R\frefresh\6A\16git_add_all\6d\vdelete\6C\15close_node\6S\15open_split\t<cr>\topen\18<2-LeftMouse>\topen\6p\25paste_from_clipboard\6r\vrename\agg\24git_commit_and_push\6c\22copy_to_clipboard\agp\rgit_push\agc\15git_commit\agr\20git_revert_file\1\0\1\rposition\nfloat\fbuffers\1\0\14\6d\vdelete\6R\frefresh\6r\vrename\6x\21cut_to_clipboard\6.\rset_root\6p\25paste_from_clipboard\6c\22copy_to_clipboard\abd\18buffer_delete\t<bs>\16navigate_up\6s\16open_vsplit\6a\badd\6S\15open_split\t<cr>\topen\18<2-LeftMouse>\topen\1\0\1\rposition\nright\1\0\1\18show_unloaded\2\15filesystem\vwindow\rmappings\1\0\19\6/\23filter_as_you_type\6R\frefresh\6C\15close_node\6I\21toggle_gitignore\6c\22copy_to_clipboard\6H\18toggle_hidden\6x\21cut_to_clipboard\t<bs>\16navigate_up\6s\16open_vsplit\6S\15open_split\t<cr>\topen\18<2-LeftMouse>\topen\6f\21filter_on_submit\6.\rset_root\6p\25paste_from_clipboard\6r\vrename\6d\vdelete\6a\badd\n<c-x>\17clear_filter\1\0\2\nwidth\3\30\rposition\nright\ffilters\1\0\2\24follow_current_file\1\27use_libuv_file_watcher\1\1\0\2\16show_hidden\1\22respect_gitignore\2\1\0\4\23enable_diagnostics\2\22enable_git_status\2\23popup_border_style\frounded\25close_if_last_window\1\nsetup\rneo-tree\frequire\0" },
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  neoformat = {
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neoformat",
    url = "https://github.com/sbdchd/neoformat"
  },
  ["neofsharp.vim"] = {
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neofsharp.vim",
    url = "https://github.com/adelarsq/neofsharp.vim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-code-action-menu"] = {
    commands = { "CodeActionMenu" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-code-action-menu",
    url = "https://github.com/weilbith/nvim-code-action-menu"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-solarized-lua"] = {
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-solarized-lua",
    url = "https://github.com/ishan9299/nvim-solarized-lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["palenight.vim"] = {
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\palenight.vim",
    url = "https://github.com/drewtempelmeyer/palenight.vim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["symbols-outline.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-easyescape"] = {
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-easyescape",
    url = "https://github.com/zhou13/vim-easyescape"
  },
  ["vim-elixir"] = {
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-elixir",
    url = "https://github.com/elixir-editors/vim-elixir"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-monokai-pro"] = {
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-monokai-pro",
    url = "https://github.com/phanviet/vim-monokai-pro"
  },
  ["vim-solidity"] = {
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-solidity",
    url = "https://github.com/tomlion/vim-solidity"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "C:\\Users\\Otieno\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\n√\t\0\0\6\0\20\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0005\5\b\0=\5\t\4=\4\n\3=\3\v\0025\3\f\0005\4\r\0005\5\14\0=\5\t\4=\4\n\3=\3\15\0025\3\18\0005\4\16\0005\5\17\0=\5\t\4=\4\n\3=\3\19\2B\0\2\1K\0\1\0\15git_status\1\0\0\1\0\18\6x\21cut_to_clipboard\aga\17git_add_file\6s\16open_vsplit\agu\21git_unstage_file\6R\frefresh\6A\16git_add_all\6d\vdelete\6C\15close_node\6S\15open_split\t<cr>\topen\18<2-LeftMouse>\topen\6p\25paste_from_clipboard\6r\vrename\agg\24git_commit_and_push\6c\22copy_to_clipboard\agp\rgit_push\agc\15git_commit\agr\20git_revert_file\1\0\1\rposition\nfloat\fbuffers\1\0\14\6d\vdelete\6R\frefresh\6r\vrename\6x\21cut_to_clipboard\6.\rset_root\6p\25paste_from_clipboard\6c\22copy_to_clipboard\abd\18buffer_delete\t<bs>\16navigate_up\6s\16open_vsplit\6a\badd\6S\15open_split\t<cr>\topen\18<2-LeftMouse>\topen\1\0\1\rposition\nright\1\0\1\18show_unloaded\2\15filesystem\vwindow\rmappings\1\0\19\6/\23filter_as_you_type\6R\frefresh\6C\15close_node\6I\21toggle_gitignore\6c\22copy_to_clipboard\6H\18toggle_hidden\6x\21cut_to_clipboard\t<bs>\16navigate_up\6s\16open_vsplit\6S\15open_split\t<cr>\topen\18<2-LeftMouse>\topen\6f\21filter_on_submit\6.\rset_root\6p\25paste_from_clipboard\6r\vrename\6d\vdelete\6a\badd\n<c-x>\17clear_filter\1\0\2\nwidth\3\30\rposition\nright\ffilters\1\0\2\24follow_current_file\1\27use_libuv_file_watcher\1\1\0\2\16show_hidden\1\22respect_gitignore\2\1\0\4\23enable_diagnostics\2\22enable_git_status\2\23popup_border_style\frounded\25close_if_last_window\1\nsetup\rneo-tree\frequire\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
try_loadstring("\27LJ\2\nA\0\0\4\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\1\2\0004\3\0\0B\1\2\1K\0\1\0\18init_lsp_saga\flspsaga\frequire\0", "config", "lspsaga.nvim")
time([[Config for lspsaga.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file CodeActionMenu lua require("packer.load")({'nvim-code-action-menu'}, { cmd = "CodeActionMenu", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)


_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
