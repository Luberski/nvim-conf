vim.g.mapleader = " "
vim.keymap.set("n", "<C-e>", vim.cmd.Ex)

vim.keymap.set("n", "dd", "\"_dd")
vim.keymap.set("n", "dx", "dd")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "{", "{zz")
vim.keymap.set("n", "}", "}zz")
--vim.keymap.set("n", "<C-o>", "<C-h>")
--vim.keymap.set("n", "<C-i>", "<C-l>")
vim.api.nvim_set_keymap('n', '<C-h>', '<C-o>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-i>', {noremap = true, silent = true})
