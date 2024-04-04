return {
  'echasnovski/mini.files',
  version = '*',

  config = function()
    require('mini.files').setup({
    })
    vim.api.nvim_set_keymap('n', '<C-\\>', ':lua MiniFiles.open()<CR>', {noremap = true, silent = true})
  end

}
