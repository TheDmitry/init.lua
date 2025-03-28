require('packer').startup(function(use)
    use('wbthomason/packer.nvim')
    
    use('neovim/nvim-lspconfig')

    use('williamboman/mason.nvim')
    use('williamboman/mason-lspconfig.nvim')
    
    use({ "catppuccin/nvim", as = "catppuccin" })
    use('xiyaowong/transparent.nvim')
    use 'feline-nvim/feline.nvim'
    
    use('nvim-tree/nvim-tree.lua')
    use('nvim-tree/nvim-web-devicons')
--    use('preservim/nerdtree')
--    use('ryanoasis/vim-devicons')
    
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } )
    use({
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    })
    
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use('dense-analysis/ale')
    use('NOSDuco/remote-sshfs.nvim')
    use('vim-syntastic/syntastic')
end)

require('thedmitry.settings')
require('thedmitry.remap')
require('thedmitry.tree')

require('thedmitry.theme')

require('thedmitry.feline')
require('thedmitry.treesitter')
require('thedmitry.lsp')
require('thedmitry.plugins')
