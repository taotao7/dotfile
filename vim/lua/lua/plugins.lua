return require('packer').startup(function()
  use {'liuchengxu/vista.vim'}
  use {'neoclide/coc.nvim', branch = 'release'}
  use {'luochen1990/rainbow'}
  use {'dracula/vim', as = 'dracula'}
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use {'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} }}
  use {'numToStr/Comment.nvim', config = function() require('Comment').setup() end}
  use {'tpope/vim-fugitive'}
  use {'airblade/vim-gitgutter'}
  use {'glepnir/dashboard-nvim'}
  use {'glepnir/galaxyline.nvim', branch = 'main', requires = {'kyazdani42/nvim-web-devicons', opt = true}}
  use {'sainnhe/everforest'}
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
  use {'folke/tokyonight.nvim'}
end)
