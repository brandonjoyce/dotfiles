THEME_LIGHT = "catppuccin-latte"
THEME_DARK = "catppuccin-frappe"

return {
  "f-person/auto-dark-mode.nvim",
  config = {
    update_interval = 3000,
    set_dark_mode = function()
      vim.api.nvim_set_option("background", "dark")
      vim.cmd("colorscheme " .. THEME_DARK)
      -- colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
    end,
    set_light_mode = function()
      vim.api.nvim_set_option("background", "light")
      vim.cmd("colorscheme " .. THEME_LIGHT)
    end,
  },
}
