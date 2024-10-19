-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
-- Packer can manage itself
  use   'wbthomason/packer.nvim'
-- UI STUFF --
  use{  'nvim-telescope/telescope-ui-select.nvim',
          requires = {
            'nvim-telescope/telescope.nvim'} }
-- THEME STUFF --
  use   'catppuccin/nvim'
-- FILE STUFF --
  use{	'nvim-telescope/telescope.nvim',
          tag = '0.1.8',
          requires = {
            'nvim-lua/plenary.nvim'} }
  use{  'nvim-neo-tree/neo-tree.nvim',
          branch = 'v3.x',
          requires = {
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons',
            'MunifTanjim/nui.nvim',
            '3rd/image.nvim'} }
  use	  'tpope/vim-fugitive'
-- EDITOR STUFF --
  use{	'nvim-treesitter/nvim-treesitter',
          run = ':TSUpdate'}
  use	  'nvim-treesitter/playground'
  use 	'mbbill/undotree'
-- LSP STUFF --
  use   'williamboman/mason.nvim'
  use   'williamboman/mason-lspconfig.nvim'
  use   'neovim/nvim-lspconfig'
end)
