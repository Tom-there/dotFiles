-- leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>", { desc = "Remove search highlights" })

-- indentation
vim.keymap.set("v", "<", "<gv", { desc = "stay in selection when indenting to the left" })
vim.keymap.set("v", ">", ">gv", { desc = "stay in selection when indenting to the left" })

-- window splitting
vim.keymap.set("n", "<leader>wv", "<cmd>vsplit<cr>", { desc = "Split window Vertically" })
vim.keymap.set("n", "<leader>wh", "<cmd>split<cr>", { desc = "Split window horizontally" })


-- window switching
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus left" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus right" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus down" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus up" })
