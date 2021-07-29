---------------------------------------
-- File Manager Conf
---------------------------------------

local g = vim.g

g.nvim_tree_width = 27
g.nvim_tree_ignore = {'.git'}
g.nvim_tree_gitignore = 1
g.nvim_tree_auto_open = 1
g.nvim_tree_indent_markers = 1
g.nvim_tree_auto_close = 1
g.nvim_tree_auto_ignore_ft = { 'dashboard' }
g.nvim_hide_dotfiles = 1
g.nvim_tree_git_hl = 1
g.nvim_tree_highlight_opened_files = 1
g.nvim_tree_lsp_diagnostics = 1
g.nvim_tree_show_icons = {
	git = 1,
	folders = 1,
	files = 1
}
