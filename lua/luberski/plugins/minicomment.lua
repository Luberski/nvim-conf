return {
  'echasnovski/mini.comment',
  version = '*',

  config = function()
    require('mini.comment').setup({
      mappings = {
        comment = '',
        comment_visual = ''
    }
  })
  end
}
