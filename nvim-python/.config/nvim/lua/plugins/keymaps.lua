-- telescope
vim.keymap.set("n", "<leader>fs", ":Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fp", ":Telescope git_files<cr>")
vim.keymap.set("n", "<leader>fz", ":Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>fo", ":Telescope oldfiles<cr>")

-- tree
vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<cr>")

-- format code using LSP
vim.keymap.set("n", "<leader>fmd", vim.lsp.buf.format)

-- markdown preview
vim.keymap.set("n", "<leader>mp", ":MarkdownPreviewToggle<cr>")

-- nvim-comment
vim.keymap.set({"n", "v"}, "<leader>c", ":CommentToggle<cr>")

-- Git keymaps
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<cr>")
vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<cr>")
vim.keymap.set("n", "<leader>gu", ":Gitsigns undo_stage_hunk<cr>")
vim.keymap.set("n", "<leader>gr", ":Gitsigns reset_hunk<cr>")
vim.keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<cr>")
