--Packer Install
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- Plugin manager
  use {
  'nvim-telescope/telescope.nvim', -- File search and browsing
  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'arcticicestudio/nord-vim' -- Nord Colorscheme
  use {
	'neovim/nvim-lspconfig', -- Collection of configurations for the built-in LSP client
	'williamboman/nvim-lsp-installer',
  }
  use 'nvim-treesitter/nvim-treesitter' -- Syntax Highlighting
  use 'fatih/vim-go'

   -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  --use "hrsh7th/cmp-cmdline" -- cmdline completions
  --use "saadparwaiz1/cmp_luasnip" -- snippet completions

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "saadparwaiz1/cmp_luasnip"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
