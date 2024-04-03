vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pp", vim.cmd.Ex)

vim.keymap.set("n", "dd", "\"_dd")
vim.keymap.set("n", "dx", "dd")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "{", "{zz")
vim.keymap.set("n", "}", "}zz")
-- vim.keymap.set("n", "<C-o>", "<C-h>")
-- vim.keymap.set("n", "<C-i>", "<C-l>")
