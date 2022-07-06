-- init.lua
return require('packer').startup(function()

    -- package manager - this is essential.
    use 'wbthomason/packer.nvim'

    -- Configurations for Nvim LSP
    use {
        'neovim/nvim-lspconfig',
        config = function()
         require("plugins.configs.lspconfig")
      end,
    }
    
    -- wakatime plugion to track coding time
    use 'wakatime/vim-wakatime'

    
    -- nvim tree file manager tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

end)

