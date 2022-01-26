local api = vim.api

vim.g.mapleader = " "

api.nvim_set_keymap("i", "<C-j>", "<esc>", {noremap = true})
api.nvim_set_keymap("n", "<Leader>y", '"*y', {noremap = true})
api.nvim_set_keymap("n", "<Leader>p", '"*p', {noremap = true})

-- Telescope
api.nvim_set_keymap("n", "<Leader>ff", ":Telescope find_files<CR>", {noremap = true, silent = true})
api.nvim_set_keymap("n", "<Leader>fs", ":lua require'telescope.builtin'.lsp_document_symbols()<cr>", {noremap = true, silent = true})
api.nvim_set_keymap("n", "<Leader>fb", ":lua require'telescope.builtin'.buffers()<cr>", {noremap = true, silent = true})
-- NERDTree
api.nvim_set_keymap("n", "<leader>n", ":NERDTreeFocus<CR>", {noremap = true, silent = true})
api.nvim_set_keymap("n", "<C-n>", ":NERDTree<CR>", {noremap = true, silent = true})
api.nvim_set_keymap("n", "<C-t>", ":NERDTreeToggle<CR>", {noremap = true, silent = true})
-- LSP
api.nvim_set_keymap("n", "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>", {noremap = true, silent = true})
api.nvim_set_keymap("n", "<leader>fo", ":Format<CR>", {noremap = true, silent = true})
