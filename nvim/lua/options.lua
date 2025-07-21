vim.o.sw = 4
vim.o.ts = 4
vim.o.expandtab = true

vim.o.completeopt = "menu,menuone,popup,fuzzy" -- completion menu
vim.o.pumheight = 10 -- max completion height

vim.g.havenerdfont = true

vim.o.termguicolors = true 
vim.o.cursorline = true
vim.o.number = true
-- vim.o.relativenumber = true

vim.o.grepprg = "rg --vimgrep"	
vim.o.grepformat = "%f:%l:%c:%m"

vim.o.signcolumn = "yes"

vim.o.confirm = true
vim.o.updatetime = 200
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.smartindent = true
vim.o.shiftround = true

vim.o.undofile = true
vim.o.undolevels = 10000

vim.g.mapleader = vim.keycode("<space>")
vim.g.maplocalleader = vim.keycode("<space>")

vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.g.netrw_banner = 0

vim.cmd([[colorscheme habamax]])
