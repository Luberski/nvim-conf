return {
  'hrsh7th/nvim-cmp',
  event = { "InsertEnter", "CmdlineEnter" },
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/cmp-vsnip',
    'hrsh7th/vim-vsnip',
  },

  config = function()
    -- local cmp = require('cmp')
    --
    -- cmp.setup({
    --   snippet = {
    --     -- REQUIRED - you must specify a snippet engine
    --     expand = function(args)
    --       vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
    --       -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
    --       -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
    --       -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
    --       -- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
    --     end,
    --   },
    --   window = {
    --     -- completion = cmp.config.window.bordered(),
    --     -- documentation = cmp.config.window.bordered(),
    --   },
    --   mapping = cmp.mapping.preset.insert({
    --     ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    --     ['<C-f>'] = cmp.mapping.scroll_docs(4),
    --     ['<C-Space>'] = cmp.mapping.complete(),
    --     ['<C-e>'] = cmp.mapping.abort(),
    --     ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    --   }),
    --   sources = cmp.config.sources({
    --     { name = 'nvim_lsp' },
    --     { name = 'vsnip' }, -- For vsnip users.
    --     -- { name = 'luasnip' }, -- For luasnip users.
    --     -- { name = 'ultisnips' }, -- For ultisnips users.
    --     -- { name = 'snippy' }, -- For snippy users.
    --   }, {
    --     { name = 'buffer' },
    --   })
    -- })

    local cmp_status_ok, cmp = pcall(require, "cmp")
    if not cmp_status_ok then
      return
    end

    -- WIP Protected call for vsnip
    --local snip_status_ok, vsnip = pcall(require, "vim-vsnip")
    --if not snip_status_ok then
    --  return
    --end

    local has_words_before = function()
      local line, col = unpack(vim.api.nvim_win_get_cursor(0))
      return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
    end

    local feedkey = function(key, mode)
      vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
    end

    -- Setup nvim-cmp.
    local cmp = require 'cmp'

    local lsp_symbols = {
      Text = "   (Text) ",
      Method = "   (Method)",
      Function = "   (Function)",
      Constructor = "   (Constructor)",
      Field = " ﴲ  (Field)",
      Variable = "[] (Variable)",
      Class = "   (Class)",
      Interface = " ﰮ  (Interface)",
      Module = "   (Module)",
      Property = " 襁 (Property)",
      Unit = "   (Unit)",
      Value = "   (Value)",
      Enum = " 練 (Enum)",
      Keyword = "   (Keyword)",
      Snippet = "   (Snippet)",
      Color = "   (Color)",
      File = "   (File)",
      Reference = "   (Reference)",
      Folder = "   (Folder)",
      EnumMember = "   (EnumMember)",
      Constant = " ﲀ  (Constant)",
      Struct = " ﳤ  (Struct)",
      Event = "   (Event)",
      Operator = "   (Operator)",
      TypeParameter = "   (TypeParameter)"
    }

    cmp.setup {
      snippet = {
        expand = function(args)
          vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.

        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif vim.fn["vsnip#available"](1) == 1 then
            feedkey("<Plug>(vsnip-expand-or-jump)", "")
          elseif has_words_before() then
            cmp.complete()
          else
            fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
          end
        end, { "i", "s" }),

        ['<S-Tab>'] = cmp.mapping(function()
          if cmp.visible() then
            cmp.select_prev_item()
          elseif vim.fn["vsnip#jumpable"](-1) == 1 then
            feedkey("<Plug>(vsnip-jump-prev)", "")
          end
        end, { "i", "s" }),
      }),

      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'vsnip' }, -- For vsnip users.
        { name = 'path' },
        { name = 'treesitter' },
        { name = 'zsh' },
      }, {
        { name = 'buffer' },
      })
    }
  end
}
