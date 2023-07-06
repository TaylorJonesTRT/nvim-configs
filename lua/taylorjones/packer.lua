-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use ('wbthomason/packer.nvim')


  use('nvim-lua/plenary.nvim')

  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
      -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

  use('folke/tokyonight.nvim')
  use{
      "nobbmaestro/nvim-andromeda",
      requires = { "tjdevries/colorbuddy.nvim", branch = "dev" },
      as = "Andromeda"
  }
  use{ "catppuccin/nvim", as = "catppuccin" }

  vim.cmd('colorscheme catppuccin-mocha')

  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate',
      dependencies = {
          'JoosepAlviste/nvim-ts-context-commentstring',
      },
  }

  use ('nkrkv/nvim-treesitter-rescript')
  use('nvim-treesitter/playground')
  use('nvim-treesitter/nvim-treesitter-context')

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
  -- use {
  --     'akinsho/bufferline.nvim',
  --     tag = '*',
  --     requires = 'nvim-tree/nvim-web-devicons'
  -- }

  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      requires = {
          -- LSP Support
          {'neovim/nvim-lspconfig'},
          {'williamboman/mason.nvim'},
          {'williamboman/mason-lspconfig.nvim'},

          -- Autocompletion
          {'hrsh7th/nvim-cmp'},
          {'hrsh7th/cmp-buffer'},
          {'hrsh7th/cmp-path'},
          {'saadparwaiz1/cmp_luasnip'},
          {'hrsh7th/cmp-nvim-lsp'},
          {'hrsh7th/cmp-nvim-lua'},

          -- Snippets
          {'L3MON4D3/LuaSnip'},
          {'rafamadriz/friendly-snippets'},
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

use('nvim-lua/popup.nvim')

use('cljoly/telescope-repo.nvim')

use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}

use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}

use {
    'aaditeynair/conduct.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
}

use({
  "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
  config = function()
    require("lsp_lines").setup()
  end,
})

  use({
      "folke/trouble.nvim",
      config = function()
          require("trouble").setup {
              icons = false,
              -- your configuration comes here
              -- or leave it empty to use the default settings
              -- refer to the configuration section below
          }
      end
  })

  use('xiyaowong/transparent.nvim')

  use('norcalli/nvim-colorizer.lua')

  use({
      "glepnir/lspsaga.nvim",
      opt = true,
      branch = "main",
      event = "LspAttach",
      config = function()
          require("lspsaga").setup({})
      end,
      requires = {
          {"nvim-tree/nvim-web-devicons"},
          --Please make sure you install markdown and markdown_inline parser
          {"nvim-treesitter/nvim-treesitter"}
      }
  })

  use {
    "lewis6991/hover.nvim",
    config = function()
        require("hover").setup {
            init = function()
                -- Require providers
                require("hover.providers.lsp")
                require('hover.providers.gh')
                require('hover.providers.gh_user')
                require('hover.providers.jira')
                require('hover.providers.man')
                require('hover.providers.dictionary')
            end,
            preview_opts = {
                border = nil
            },
            -- Whether the contents of a currently open hover window should be moved
            -- to a :h preview-window when pressing the hover keymap.
            preview_window = false,
            title = true
        }

        -- Setup keymaps
        vim.keymap.set("n", "K", require("hover").hover, {desc = "hover.nvim"})
        vim.keymap.set("n", "gK", require("hover").hover_select, {desc = "hover.nvim (select)"})
    end
}

use('nvim-treesitter/nvim-treesitter-context')

end)
