vim.keymap.set("v", "J",":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K",":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("v", "<C-c>", "\"+y")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")

vim.keymap.set("n", "[b", ":bprevious<cr>")
vim.keymap.set("n", "]b", ":bnext<cr>")
vim.keymap.set("n", "<leader>bd", ":bdelete!<cr>" )

vim.keymap.set("n", "<C-\\>", ":vsplit<cr>")
vim.keymap.set("n", "<C-s>", ":w<cr>")
vim.keymap.set("i", "<C-s>", "<ESC>:lua vim.lsp.buf.format()<CR>:w<CR>l")
vim.keymap.set("n", "<C-w>", ":q<cr>")

vim.keymap.set("n", "<C-b>", "ibreakpoint()<escape>")
vim.keymap.set("i", "<C-b>", "breakpoint()")

vim.keymap.set("i", "<ENTER>", "<ESC>:lua vim.lsp.buf.format()<CR>a<ENTER>")
