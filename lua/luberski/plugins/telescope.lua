return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.5',
  -- or                              , branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },

  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>o', builtin.find_files, {})
    vim.keymap.set('n', '<leader>go', builtin.git_files, {})
    vim.keymap.set('n', '<C-F>', builtin.live_grep, {})
    vim.keymap.set('n', 'F', builtin.current_buffer_fuzzy_find, {})
    vim.keymap.set('n', '<leader>O', builtin.treesitter, {})
    vim.keymap.set('n', '<leader>?', builtin.keymaps, {})
  end
}
