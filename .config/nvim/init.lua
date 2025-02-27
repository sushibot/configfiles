vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

require('options')
require('autocmd')
require('keymaps')
require('lazy-bootstrap')
require('lazy-plugins')
