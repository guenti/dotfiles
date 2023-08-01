-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

-- Remap the f***ing F1 key
keymap("i", "<F1>", "<ESC>", opts)
keymap("n", "<F1>", "<ESC>", opts)
keymap("v", "<F1>", "<ESC>", opts)

-- Diable arrow keys in normal mode
keymap("n", "<Up>", "<NOP>", opts)
keymap("n", "<Down>", "<NOP>", opts)
keymap("n", "<Left>", "<NOP>", opts)
keymap("n", "<Right>", "<NOP>", opts)

-- Open files
keymap("n", "<Leader>we", ':e <C-r>=fnamemodify(nvim_buf_get_name(0), ":p:h") . "/"<CR>', { silent = false })
-- Open files split
keymap("n", "<Leader>se", ':sp <C-r>=fnamemodify(nvim_buf_get_name(0), ":p:h") . "/"<CR>', { silent = false })
-- Open files split verticaly
keymap("n", "<Leader>ve", ':vsp <C-r>=fnamemodify(nvim_buf_get_name(0), ":p:h") . "/"<CR>', { silent = false })

-- Open an new (empty) split window and switch over to it.
keymap("n", "<Leader>nv", ":botright vnew<CR><C-w>l", opts)
keymap("n", "<Leader>nu", ":below new<CR><C-w>l", opts)

-- Clear search result in normal mode
keymap("n", "<Leader><Space>", ":noh<CR>", opts)

-- Toggle line numbers
keymap("n", "<Leader>#", ":set nu!<CR>", opts)

-- Open links in help etc. with <F10>
keymap("n", "<F10>", "<C-]>", opts)

-- Buffers
keymap("n", "<Leader>ab", ":enew<CR>", opts)
keymap("n", "<Leader>nb", ":bnext<CR>", opts)
keymap("n", "<Leader>pb", ":bprevious<CR>", opts)
keymap("n", "<Leader>kb", ":bp <BAR> bd #<CR>", opts)
keymap("n", "<Leader>bl", ":ls<CR>", opts)

-- Tabs
keymap("n", "<Leader>at", ":tabnew<CR>", opts)
keymap("n", "<Leader>nt", ":tabnext<CR>", opts)
keymap("n", "<Leader>pt", ":tabprev<CR>", opts)
keymap("n", "<Leader>kt", ":tabclose<CR>", opts)

-- Insert
-- Mapping ESC to jj
keymap("i", "jj", "<ESC>", opts)
