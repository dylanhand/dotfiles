vim.g.mapleader = " "

local keymap = vim.keymap

-- mash homerow to escape
keymap.set("i", "jk", "<ESC>")
keymap.set("i", "kj", "<ESC>")

-- easy save
keymap.set("n", "<leader>w", ":w<CR>")

-- easy underscores
keymap.set("i", "uu", "_")

-- clear highlighted search results
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- move visual blocks
keymap.set("v", "J", ":move '>+1<CR>gv=gv")
keymap.set("v", "K", ":move '<-2<CR>gv=gv")

-- keep cursor in place
keymap.set("n", "J", "mzJ`z")

-- stay centered when scrolling by half page
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- stay centered when navigating search terms
keymap.set("n", "n", "nzz")
keymap.set("n", "N", "Nzz")

-- don't copy deleted character to register
keymap.set("n", "x", '"_x')

-- don't lose yank when pasting in visual mode
keymap.set("x", "<leader>p", '"_dP')

-- increment & decrement
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

-- splits
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<leader>sx", ":close<CR>")

-- tabs
keymap.set("n", "<leader>to", ":tabnew<CR>")
keymap.set("n", "<leader>tx", ":tabclose<CR>")
keymap.set("n", "<leader>]", ":tabn<CR>")
keymap.set("n", "<leader>[", ":tabp<CR>")


-- plugin keymaps

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>")
