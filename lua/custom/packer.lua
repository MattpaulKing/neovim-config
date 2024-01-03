-- This file can be loaded by calling `lua require('plugins')` from your init.vim
--
-- Only required if you have packer configured as `opt`

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use('nvim-lua/plenary.nvim')
  use('nvim-telescope/telescope.nvim')
  use('nvim-tree/nvim-web-devicons')
  use("folke/tokyonight.nvim", { lazy = false, priority = 1000 })
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use{ 'theprimeagen/harpoon',
    requires = {{ "nvim-lua/plenary.nvim"}}
  }
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use { 'VonHeikemen/lsp-zero.nvim',
  	branch = 'v2.x',
  	requires = {
    	-- LSP Support
    	{'neovim/nvim-lspconfig'},             -- Required
    	{'williamboman/mason.nvim'},           -- Optional
    	{'williamboman/mason-lspconfig.nvim'}, -- Optional
    	-- Autocompletion
    	{'hrsh7th/nvim-cmp'},     -- Required
    	{'hrsh7th/cmp-nvim-lsp'}, -- Required
    	{'L3MON4D3/LuaSnip'},     -- Required
      {"rafamadriz/friendly-snippets"},
    }
  }
  use { "rafamadriz/friendly-snippets", requires = {
    {'L3MON4D3/LuaSnip'},     -- Required
  }}
  use {
	  "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use {'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use { "lukas-reineke/lsp-format.nvim" }
  use { "davidosomething/format-ts-errors.nvim" }
  use { 'christoomey/vim-tmux-navigator' }
  use {'vimpostor/vim-tpipeline' }
  use { "folke/todo-comments.nvim",
    requires = {{'nvim-lua/plenary.nvim' }}
  }
  use { 'folke/trouble.nvim',
    requires = {{ 'nvim-tree/nvim-web-devicons' }}
  }
  use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
  }
  use { 'nvim-pack/nvim-spectre' }
  use({ "MaximilianLloyd/ascii.nvim", requires = {
	"MunifTanjim/nui.nvim"
} })
  -- use {"folke/noice.nvim",
  --   requires = {"MunifTanjim/nui.nvim"}
  -- }
  use {"tpope/vim-dadbod"}
  use { 'kristijanhusak/vim-dadbod-completion'}
  use {"kristijanhusak/vim-dadbod-ui",
    requires = {{'tpope/vim-dadbod'}, { 'kristijanhusak/vim-dadbod-completion'}},
    cmd = {
      "DBUI",
      "DBUIToggle",
      "DBUIAddConnection",
      "DBUIFindBuffer"
    },
    ft = { 'sql', 'mysql', 'plsql' },
    init = function ()
      vim.g.db_ui_use_nerd_fonts = 1
    end,
  }
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }
end)
