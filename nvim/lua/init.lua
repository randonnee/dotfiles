vim.g.mapleader = " "
vim.opt.nu = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.cursorline = true
vim.opt.scrolloff = 6
vim.opt.startofline = true
vim.opt.ic = true

require("config.remap")
require("config.lazy")
require("config.autocmd")
