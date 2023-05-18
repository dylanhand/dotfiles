local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentations
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- leave buffer at top/bottom when scrolling
opt.scrolloff = 8

opt.updatetime = 50

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- sync with system slipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

-- snake case words are words too
opt.iskeyword:append("-")

-- don't assume new line after comment is also comment
opt.formatoptions:remove { "c", "r", "o" }
