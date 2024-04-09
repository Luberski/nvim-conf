return {
  'christoomey/vim-tmux-navigator',
  vim.keymap.set('n', '<C-<Left>>', ':TmuxNavigateLeft<CR>'),
  vim.keymap.set('n', '<C-<Right>>', ':TmuxNavigateRight<CR>'),
  vim.keymap.set('n', '<C-<Down>>', ':TmuxNavigateDown<CR>'),
  vim.keymap.set('n', '<C-<Up>>', ':TmuxNavigateUp<CR>'),
}
