--reload neovim when this file is saved
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- lua functions used by many plugins
  use 'nvim-lua/plenary.nvim'

  use 'bluz71/vim-nightfly-guicolors' -- color scheme
  -- use { "catppuccin/nvim", as = "catppuccin" }
  use 'christoomey/vim-tmux-navigator' -- navigate splits with ctrl-[h,j,k,l]
  use 'szw/vim-maximizer'
  use 'tpope/vim-surround'
  use 'vim-scripts/ReplaceWithRegister'
  use 'numToStr/Comment.nvim' -- toggle comments with gc

  -- file explorer
  use 'nvim-tree/nvim-tree.lua'

  -- file icons
  use 'nvim-tree/nvim-web-devicons'

  -- status line
  use 'nvim-lualine/lualine.nvim'

  -- fuzzy finding
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use {'nvim-telescope/telescope.nvim', branch = '0.1.x' }

  -- autocompletion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'

  -- snippets
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'

  -- managing & installing lsp servers
  use {
    'williamboman/mason.nvim',
    run = ":MasonUpdate"
  }
  use 'williamboman/mason-lspconfig.nvim'

  -- configuring lsp servers
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  -- use {
  --   'glepnir/lspsaga.nvim',
  --   branch = "main"
  -- }
  use 'jose-elias-alvarez/typescript.nvim'
  use 'onsails/lspkind.nvim'

  -- treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }

  -- auto closing
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  -- git signs
  use 'lewis6991/gitsigns.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
