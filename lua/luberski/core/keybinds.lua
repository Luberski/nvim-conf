vim.g.mapleader = " "
vim.keymap.set("n", "<C-e>", vim.cmd.Ex)

vim.keymap.set("n", "dd", "\"_dd")
vim.keymap.set("n", "dx", "dd")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- vim.keymap.set("n", "{", "{zz")
-- vim.keymap.set("n", "}", "}zz")
--vim.keymap.set("n", "<C-o>", "<C-h>")
--vim.keymap.set("n", "<C-i>", "<C-l>")
vim.api.nvim_set_keymap('n', '<C-h>', '<C-o>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-i>', { noremap = true, silent = true })
vim.keymap.set('n', '<A-j>', '10<C-e>')
vim.keymap.set('n', '<A-k>', '10<C-y>')
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>')
vim.keymap.set("n", "gg", "G")
vim.keymap.set("n", "G", "gg")
vim.keymap.set("v", "gg", "G")
vim.keymap.set("v", "G", "gg")
