-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

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

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\teddj\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\teddj\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\teddj\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\teddj\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\teddj\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
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
    path = "C:\\Users\\teddj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "C:\\Users\\teddj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "C:\\Users\\teddj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "C:\\Users\\teddj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "C:\\Users\\teddj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "C:\\Users\\teddj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["defx.nvim"] = {
    loaded = true,
    path = "C:\\Users\\teddj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\defx.nvim",
    url = "https://github.com/Shougo/defx.nvim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "C:\\Users\\teddj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "C:\\Users\\teddj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gruvbox-material",
    url = "https://github.com/sainnhe/gruvbox-material"
  },
  ["lsp-format.nvim"] = {
    loaded = true,
    path = "C:\\Users\\teddj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lsp-format.nvim",
    url = "https://github.com/lukas-reineke/lsp-format.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "C:\\Users\\teddj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\nã\t\0\0\6\0\23\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0005\5\b\0=\5\t\4=\4\n\3=\3\v\0025\3\f\0005\4\r\0005\5\14\0=\5\t\4=\4\n\3=\3\15\0025\3\18\0005\4\16\0005\5\17\0=\5\t\4=\4\n\3=\3\19\2B\0\2\0016\0\20\0009\0\21\0'\2\22\0B\0\2\1K\0\1\0\"nnoremap \\ :NeoTreeReveal<cr>\bcmd\bvim\15git_status\1\0\0\1\0\18\agr\20git_revert_file\agp\rgit_push\aga\17git_add_file\6C\15close_node\agu\21git_unstage_file\6d\vdelete\6A\16git_add_all\6S\15open_split\t<cr>\topen\18<2-LeftMouse>\topen\6c\22copy_to_clipboard\agg\24git_commit_and_push\6p\25paste_from_clipboard\6x\21cut_to_clipboard\6r\vrename\6s\16open_vsplit\6R\frefresh\agc\15git_commit\1\0\1\rposition\nfloat\fbuffers\1\0\14\6d\vdelete\6r\vrename\t<bs>\16navigate_up\6s\16open_vsplit\6p\25paste_from_clipboard\6a\badd\abd\18buffer_delete\6S\15open_split\t<cr>\topen\18<2-LeftMouse>\topen\6c\22copy_to_clipboard\6R\frefresh\6.\rset_root\6x\21cut_to_clipboard\1\0\1\rposition\nright\1\0\1\18show_unloaded\2\15filesystem\vwindow\rmappings\1\0\19\6s\16open_vsplit\6I\21toggle_gitignore\t<bs>\16navigate_up\6c\22copy_to_clipboard\6C\15close_node\6p\25paste_from_clipboard\6S\15open_split\t<cr>\topen\18<2-LeftMouse>\topen\6/\23filter_as_you_type\6f\21filter_on_submit\6x\21cut_to_clipboard\6r\vrename\6d\vdelete\6a\badd\n<c-x>\17clear_filter\6R\frefresh\6.\rset_root\6H\18toggle_hidden\1\0\2\rposition\nright\nwidth\3\30\ffilters\1\0\2\27use_libuv_file_watcher\1\24follow_current_file\1\1\0\2\22respect_gitignore\2\16show_hidden\1\1\0\3\23enable_diagnostics\2\22enable_git_status\2\23popup_border_style\frounded\nsetup\rneo-tree\frequire\0" },
    loaded = true,
    path = "C:\\Users\\teddj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["neofsharp.vim"] = {
    loaded = true,
    path = "C:\\Users\\teddj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neofsharp.vim",
    url = "https://github.com/adelarsq/neofsharp.vim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "C:\\Users\\teddj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "C:\\Users\\teddj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "C:\\Users\\teddj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "C:\\Users\\teddj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "C:\\Users\\teddj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "C:\\Users\\teddj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\teddj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["palenight.vim"] = {
    loaded = true,
    path = "C:\\Users\\teddj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\palenight.vim",
    url = "https://github.com/drewtempelmeyer/palenight.vim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\teddj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "C:\\Users\\teddj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "C:\\Users\\teddj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["vim-easyescape"] = {
    loaded = true,
    path = "C:\\Users\\teddj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-easyescape",
    url = "https://github.com/zhou13/vim-easyescape"
  },
  ["vim-elixir"] = {
    loaded = true,
    path = "C:\\Users\\teddj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-elixir",
    url = "https://github.com/elixir-editors/vim-elixir"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "C:\\Users\\teddj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "C:\\Users\\teddj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-gitgutter",
    url = "https://github.com/airblade/vim-gitgutter"
  },
  ["vim-monokai-pro"] = {
    loaded = true,
    path = "C:\\Users\\teddj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-monokai-pro",
    url = "https://github.com/phanviet/vim-monokai-pro"
  },
  ["vim-solidity"] = {
    loaded = true,
    path = "C:\\Users\\teddj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-solidity",
    url = "https://github.com/tomlion/vim-solidity"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "C:\\Users\\teddj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\nã\t\0\0\6\0\23\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0005\5\b\0=\5\t\4=\4\n\3=\3\v\0025\3\f\0005\4\r\0005\5\14\0=\5\t\4=\4\n\3=\3\15\0025\3\18\0005\4\16\0005\5\17\0=\5\t\4=\4\n\3=\3\19\2B\0\2\0016\0\20\0009\0\21\0'\2\22\0B\0\2\1K\0\1\0\"nnoremap \\ :NeoTreeReveal<cr>\bcmd\bvim\15git_status\1\0\0\1\0\18\agr\20git_revert_file\agp\rgit_push\aga\17git_add_file\6C\15close_node\agu\21git_unstage_file\6d\vdelete\6A\16git_add_all\6S\15open_split\t<cr>\topen\18<2-LeftMouse>\topen\6c\22copy_to_clipboard\agg\24git_commit_and_push\6p\25paste_from_clipboard\6x\21cut_to_clipboard\6r\vrename\6s\16open_vsplit\6R\frefresh\agc\15git_commit\1\0\1\rposition\nfloat\fbuffers\1\0\14\6d\vdelete\6r\vrename\t<bs>\16navigate_up\6s\16open_vsplit\6p\25paste_from_clipboard\6a\badd\abd\18buffer_delete\6S\15open_split\t<cr>\topen\18<2-LeftMouse>\topen\6c\22copy_to_clipboard\6R\frefresh\6.\rset_root\6x\21cut_to_clipboard\1\0\1\rposition\nright\1\0\1\18show_unloaded\2\15filesystem\vwindow\rmappings\1\0\19\6s\16open_vsplit\6I\21toggle_gitignore\t<bs>\16navigate_up\6c\22copy_to_clipboard\6C\15close_node\6p\25paste_from_clipboard\6S\15open_split\t<cr>\topen\18<2-LeftMouse>\topen\6/\23filter_as_you_type\6f\21filter_on_submit\6x\21cut_to_clipboard\6r\vrename\6d\vdelete\6a\badd\n<c-x>\17clear_filter\6R\frefresh\6.\rset_root\6H\18toggle_hidden\1\0\2\rposition\nright\nwidth\3\30\ffilters\1\0\2\27use_libuv_file_watcher\1\24follow_current_file\1\1\0\2\22respect_gitignore\2\16show_hidden\1\1\0\3\23enable_diagnostics\2\22enable_git_status\2\23popup_border_style\frounded\nsetup\rneo-tree\frequire\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
