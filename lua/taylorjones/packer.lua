-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use ('wbthomason/packer.nvim')

  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
      -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  use({ 'lunarvim/Onedarker', as = 'Onedarker' })

  vim.cmd('colorscheme Onedarker')

  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate',
      dependencies = {
          'JoosepAlviste/nvim-ts-context-commentstring',
      },
  }

  use ('nkrkv/nvim-treesitter-rescript')
  use('nvim-treesitter/playground')

  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
          'nvim-tree/nvim-web-devicons', -- optional
      },
  }

  use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  }
  use {
      'akinsho/bufferline.nvim',
      tag = '*',
      requires = 'nvim-tree/nvim-web-devicons'
  }

  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      requires = {
          -- LSP Support
          {'neovim/nvim-lspconfig'},             -- Required
          {                                      -- Optional
          'williamboman/mason.nvim',
          run = function()
              pcall(vim.cmd, 'MasonUpdate')
          end,
      },
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
  }
}

use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
end}

use('RRethy/vim-illuminate')

use("lukas-reineke/indent-blankline.nvim")

use("Shatur/neovim-session-manager")

use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
    end
}

use('folke/neodev.nvim')

use ('mfussenegger/nvim-dap')
use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

use {
    "SmiteshP/nvim-navic",
    requires = "neovim/nvim-lspconfig"
}

use('lewis6991/gitsigns.nvim')

use {
  "folke/which-key.nvim",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    require("which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}

-- Lua
use {
  "ahmedkhalf/project.nvim",
  config = function()
    require("project_nvim").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      require("nvim-tree").setup({
          sync_root_with_cwd = true,
          respect_buf_cwd = true,
          update_focused_file = {
              enable = true,
              update_root = true
          },
      }),
    }
  end
}

end)
