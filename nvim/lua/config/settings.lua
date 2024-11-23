local g = vim.g
local opt = vim.o

opt.number = true
opt.relativenumber = true

g.have_nerd_font = false

opt.title = true
opt.mouse = "a"

opt.breakindent = true
opt.smartindent = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

opt.undofile = true

opt.ignorecase = true
opt.smartcase = true

opt.signcolumn = "yes"

opt.splitright = true
opt.splitbelow = true

opt.inccommand = "split"

opt.cursorline = true

opt.scrolloff = 10

--clipboard
opt.clipboard = "unnamedplus"
--g.clipboard = {
--      name = 'OSC 52',
--      copy = {
--        ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
--       ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
--      },
--      paste = {
 --       ['+'] = require('vim.ui.clipboard.osc52').paste('+'),
--        ['*'] = require('vim.ui.clipboard.osc52').paste('*'),
--      },

--}
