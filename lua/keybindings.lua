local map = function(key)
	local opts = {noremap = true}

	for i, v in pairs(key)do
		if type(i) == 'string' then opts[i] = v end
	end

	local buffer = opts.buffer
	opts.buffer = nil

	if buffer then
		vim.api.nvim_buf_set_keymap(0, key[1], key[2], key[3], opts)
	else
		vim.api.nvim_set_keymap(key[1], key[2], key[3], opts)
	end
end

map {'n', '<Leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>"}
map {'n', '<Leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>"}
map {'n', '<Leader>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>"}
map {'n', '<Leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<cr>"}

-- Defx
function defx_maps() 
	map {'C-n', '', '<cmd>:Defx<cr>'}
end
