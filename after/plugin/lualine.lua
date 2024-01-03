require('lualine').setup({
  options = {
    sections = {
      lualine_c = {
        { 'filename', path = 2 }
      },
      lualine_d = {
        draw_empty = true
      },
      lualine_e = {
        draw_empty = true
      },
      lualine_f = {
        draw_empty = true
      },
    }
  }
})
