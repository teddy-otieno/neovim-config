local map = function(key)
	local opts = { noremap = true }

	for i, v in pairs(key) do
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

map { 'n', '<Leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>" }
map { 'n', '<Leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>" }
map { 'n', '<Leader>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>" }
map { 'n', '<Leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<cr>" }
map { 'n', '<Leader>fs', "<cmd>lua require('telescope.builtin').lsp_document_symbols()<cr>" }
map { 'n', '<Leader>fd', "<cmd>lua require('telescope.builtin').diagnostics()<cr>" }

map { 'n', '<Leader>xx', "<cmd>TroubleToggle workspace_diagnostics<cr>" }
map { 'n', '<Leader>xd', "<cmd>TroubleToggle document_diagnostics<cr>" }
map { 'n', '<Leader>xl', "<cmd>TroubleToggle loclist<cr>" }
map { 'n', '<Leader>xq', "<cmd>TroubleToggle quickfix<cr>" }


-- Git gutter bindings
map { 'n', 'ghs', "<cmd>GitGutterStageHunk<cr>" }
map { 'n', ']h', "<cmd>GitGutterNextHunk<cr>" }
map { 'n', '[h', "<cmd>GitGutterPrevHunk<cr>" }
