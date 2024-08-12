-- space bar leader key
vim.g.mapleader = " "

-- buffers
vim.keymap.set("n", "<leader>n", ":bn<cr>")
vim.keymap.set("n", "<leader>p", ":bp<cr>")
vim.keymap.set("n", "<leader>x", ":bd<cr>;:bp<cr>")

-- save the file
vim.keymap.set("n", "<leader>w", ":w<cr>")
-- save and exit the file
vim.keymap.set("n", "<leader>wq", ":wq<cr>")

-- jump to normal mode
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("n", "gl", "$")
vim.keymap.set("n", "gh", "0")

-- black python formatting
vim.keymap.set("n", "<leader>fmp", ":silent !black %<cr>")

