return {
  {
    "will/rose-pine-neovim",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme rose-pine]])
      vim.api.nvim_set_hl(0, "NormalFloat:, { bg = "none" })
      vim.api.nvim_set_hl(0, "SignColumn:, { bg = "none" })
      vim.api.nvim_set_hl(0, "LineNr:, { bg = "none" })
      vim.api.nvim_set_hl(0, "CursorLineNr:, { bg = "none" })
    end,
  },
}
