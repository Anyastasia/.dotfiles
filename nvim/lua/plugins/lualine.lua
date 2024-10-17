return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
	    require("lualine").setup({
        sections = {
          lualine_a = {"mode"},
          lualine_b = {"branch", "diff"},
          lualine_c = {"filename"},
          lualine_x = {"diagnostics"},
          lualine_y = {"filetype", "progress"},
          lualine_z = {"location"},
        }
      })
    end
}
