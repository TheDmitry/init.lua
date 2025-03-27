require('packer').startup(function(use)
    use('wbthomason/packer.nvim')

    use('feline-nvim/feline.nvim')
    use('nvim-tree/nvim-web-devicons')
    use('xiyaowong/transparent.nvim')
    use('nvim-tree/nvim-tree.lua')
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } )
    use({ "catppuccin/nvim", as = "catppuccin" })
    use({
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    })
    
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use('dense-analysis/ale')
end)

require('thedmitry.settings')
require('thedmitry.remap')
require('thedmitry.plugins')

require('thedmitry.theme')

require('thedmitry.feline')
require('thedmitry.treesitter')

