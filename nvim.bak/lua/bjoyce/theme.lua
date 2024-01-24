vim.cmd('colorscheme papercolor')

local dn = require('dark_notify')

-- Configure
dn.run({
    schemes = {
      dark  = {
          colorscheme = "papercolor",
          background = "dark"
      },
      light = {
          colorscheme = "papercolor",
          background = "light"
      }
    }
})

-- Match the system dark/light mode
dn.update()
