
return {
  "nvim-telescope/telescope.nvim",
  requires = "nvim-lua/plenary.nvim",
  config = function()
    require("telescope").setup{
      defaults = {
        vimgrep_arguments = {
          "rg",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
        },
        initial_mode = "insert",
        selection_strategy = "reset",
        sorting_strategy = "descending",
        layout_strategy = "horizontal",
        layout_config = {
          horizontal = {
            prompt_position = "bottom",
            preview_width = 0.55,
            results_width = 0.8,
          },
          vertical = {
            mirror = false,
          },
          width = 0.87,
          height = 0.80,
          preview_cutoff = 120,
        },
        file_ignore_patterns = {
          "^node_modules/",
          "^.git/",
          "^.npm/",
          "^.angular/",
          "^.cache/",
          "%.o",
          "^main.dSYM/"
        },
        set_env = { ["COLORTERM"] = "truecolor" },
       },
    }
  end
}