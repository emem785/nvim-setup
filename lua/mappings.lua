local api = vim.api

vim.g.mapleader = " "

api.nvim_set_keymap("i", "<C-j>", "<esc>", {noremap = true})
api.nvim_set_keymap("n", "<Leader>y", '"*y', {noremap = true})
api.nvim_set_keymap("n", "<Leader>p", '"*p', {noremap = true})

-- General
api.nvim_set_keymap("n", "tn", '<cmd>tabnext<CR>', {noremap = true})
api.nvim_set_keymap("n", "tp", '<cmd>tabprevious<CR>', {noremap = true})
-- Telescope
api.nvim_set_keymap("n", "<Leader>ff", ":Telescope find_files<CR>", {noremap = true, silent = true})
api.nvim_set_keymap("n", "<Leader>fs", ":lua require'telescope.builtin'.lsp_document_symbols()<cr>", {noremap = true, silent = true})
api.nvim_set_keymap("n", "<Leader>fb", ":lua require'telescope.builtin'.buffers()<cr>", {noremap = true, silent = true})
-- NERDTree
api.nvim_set_keymap("n", "<leader>n", ":NERDTreeToggle<CR>", {noremap = true, silent = true})
-- LSP
api.nvim_set_keymap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", {noremap = true, silent = true})
api.nvim_set_keymap("n", "<leader>fo", "<cmd>Format<CR>", {noremap = true, silent = true})
vim.api.nvim_buf_set_keymap(0, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', {noremap = true})
vim.api.nvim_buf_set_keymap(0, 'n', '<leader>r', '<cmd>lua vim.lsp.buf.rename()<CR>', {noremap = true})
vim.api.nvim_buf_set_keymap(0, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {noremap = true})
vim.api.nvim_buf_set_keymap(0, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', {noremap = true})
vim.api.nvim_buf_set_keymap(0, 'n', '<leader>df', '<cmd>lua vim.diagnostic.goto_next()<CR>', {noremap = true})
vim.api.nvim_buf_set_keymap(0, 'n', '<leader>dp', '<cmd>lua vim.diagnostic.goto_prev()<CR>',{})
vim.api.nvim_buf_set_keymap(0, 'n', '<leader>dl', '<cmd>Telescope diagnostics<CR>', {noremap = true})
