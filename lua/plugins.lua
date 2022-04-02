
require('packer').startup(
function()
use 'wbthomason/packer.nvim'
use 'preservim/NERDTree'
use 'lifepillar/vim-solarized8'
use 'SirVer/ultisnips'
use  'kyazdani42/nvim-web-devicons' 
use 'vim-scripts/ReplaceWithRegister'
use 'natebosch/dartlang-snippets'
use 'honza/vim-snippets'
use 'tpope/vim-fugitive' 
use 'tpope/vim-surround'
use 'neovim/nvim-lspconfig'
use 'puremourning/vimspector'
use { 'terrortylor/nvim-comment' , config = require('setup.nvim-comment')}
use 'nvim-telescope/telescope.nvim'
use ({'mhartington/formatter.nvim', config = require("setup.formatter")})
use ({'akinsho/flutter-tools.nvim', requires = {{'nvim-lua/plenary.nvim'}}, config = require("setup.flutter-tools")})
use ({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', config = require("setup.treesitter")})
use ({'nvim-lualine/lualine.nvim', requires = { 'kyazdani43/nvim-web-devicons', opt = true },config = require("setup.lualine")})
use({
      "hrsh7th/nvim-cmp",
      requires = {
        { "hrsh7th/cmp-nvim-lsp" },
        { "hrsh7th/cmp-nvim-lua" },
        { "hrsh7th/cmp-buffer" },
        { "hrsh7th/cmp-path" },
        { "hrsh7th/cmp-cmdline" },
        { "hrsh7th/vim-vsnip" },
       { "hrsh7th/cmp-vsnip" },
{ 'quangnguyen30192/cmp-nvim-ultisnips' },
        { "hrsh7th/vim-vsnip-integ" },
        { "f3fora/cmp-spell", { "hrsh7th/cmp-calc" }},
      },
      config = require("setup.cmp")
    })

end
)
