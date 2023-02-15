-- Map Leader key to space 
vim.g.mapleader = " "

-- Map Leader n to Explore
vim.keymap.set("n", "<leader>n", vim.cmd.Ex)

-- Select all 
vim.keymap.set("n", "<C-a>" , "ggVG")

-- Go To 
vim.keymap.set("n", "<leader>k" , "gg")
vim.keymap.set("n", "<leader>j" , "G")
vim.keymap.set("n", "<leader>l" , "$")

