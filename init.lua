require("mappings");
require("plugins");
require("settings");

-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
--vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use { "ellisonleao/gruvbox.nvim" }


--COCNVIM
  use {'neoclide/coc.nvim', branch = 'release'}

--ULTISNIPPETS
  use 'SirVer/ultisnips' 

--EMMET
  use 'mattn/emmet-vim'

--JAVASCRIPT AND REACT
  use 'mlaursen/vim-react-snippets'

-- Pretty Javascript
  use 'yuezk/vim-js'
  use 'maxmellon/vim-jsx-pretty'
  use 'HerringtonDarkholme/yats.vim'

--TELESCOPE
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use 'romgrk/fzy-lua-native'
  use { "nvim-telescope/telescope-file-browser.nvim" }
  use 'nvim-telescope/telescope-fzy-native.nvim'

  --COLORSCHEME
  use "EdenEast/nightfox.nvim" 

--NVIM AIRLINE
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'



 -- TREESITTER
  use  {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  --use {'tjdevries/colorbuddy.vim', {'nvim-treesitter/nvim-treesitter', opt = true}}


--GITSINGNS
--use 'lewis6991/gitsigns.nvim'

use('neovim/nvim-lspconfig')
use('jose-elias-alvarez/null-ls.nvim')
use('MunifTanjim/prettier.nvim')

use ({"ziontee113/color-picker.nvim",
    config = function()
        require("color-picker")
    end,
})


--nerdtree
use 'kyazdani42/nvim-web-devicons'
use 'kyazdani42/nvim-tree.lua'



use 'mfussenegger/nvim-jdtls'







end)
