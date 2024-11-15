-- Left column settings
vim.opt.number = true
vim.opt.numberwidth = 2
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- Tab spacing
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.smartindent = true
vim.opt.breakindent = true

-- General
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.clipboard = "unnamedplus"
vim.opt.conceallevel = 0 -- show concealed characters
vim.opt.fileencoding = "utf-8"
vim.opt.mouse = "a"
vim.opt.showmode = false
vim.opt.nu = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.termguicolors = true
vim.g.have_nerd_font = true
vim.opt.isfname:append("@-@")

-- optics
vim.opt.cursorline = true
vim.opt.colorcolumn = "75"

-- Timings
vim.opt.updatetime = 50
vim.opt.timeoutlen = 666

-- splitting behavior
vim.opt.splitright = true
vim.opt.splitbelow = true

-- undos
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true


-- searching
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- leader key
vim.g.mapleader = " "
