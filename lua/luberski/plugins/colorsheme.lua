return {
  {
    -- "will/rose-pine-neovim",
    "catppuccin/nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      require("catppuccin").setup({
        -- flavour = "macchiato", -- latte, frappe, macchiato, mocha
        integrations = {
          ts_rainbow = true,
        },
        color_overrides = {
          mocha = {
            text = "#F4CDE9",
            subtext1 = "#DEBAD4",
            subtext0 = "#C8A6BE",
            overlay2 = "#B293A8",
            overlay1 = "#9C7F92",
            overlay0 = "#866C7D",
            surface2 = "#705867",
            surface1 = "#5A4551",
            surface0 = "#44313B",

            base = "#352939",
            mantle = "#211924",
            crust = "#1a1016",
          },
        },
      })
      vim.cmd([[colorscheme catppuccin]])
      -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
      -- vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
      -- vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
      -- vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "none" })
    end,
  },
}
