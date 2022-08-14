local statusline = require "mini.statusline"

statusline.setup({
  -- `:h statusline`
  content = {
    active = function()
      return " %t%=[%v]  "
    end,
    inactive = function()
      return " %t%=[%v]  "
    end,
  },

  -- Whether to set Vim's settings for statusline (make it always shown with
  set_vim_settings = true,
})