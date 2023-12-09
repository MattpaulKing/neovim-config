require('lualine').setup({
  options = {
    sections = {
      lualine_c = {
        { 'filename', path = 2 }
      }
    }
  }
})
