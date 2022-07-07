local M = {}


M.ui = {
   theme = "tokyonight",
}

M.plugins = {
  user = require "custom.plugins",
  options = {
    statusline = {
      style = "arrow",
    },
    lspconfig = {
     setup_lspconf = "custom.plugins.configs.lspconfig",
    },
  },
}

return M
