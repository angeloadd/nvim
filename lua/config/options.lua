-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = " "

vim.opt.guicursor = ""

-- Enable numbers in buffer and enable relative numbers this is set only for show as LazyVim already enables this
-- options.
-- vim.opt.nu = true
-- vim.opt.relativenumber = true

-- Tab takes for spaces everywhere, automatically and when you press tab, on top of this it expands tabs to 4 spaces
-- for encoding purposes I think.
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
-- auto indent files, by copying previous line indent (autoindent) and then tries to use language to do a smartindent
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.breakindent = true
-- do not wrap lines, show them going in the sun (after scroll bar)
vim.opt.wrap = false

-- no backup or swap, those annoying file vim creates when it crashes or you don't save stuff correctly
vim.opt.swapfile = false
vim.opt.backup = false

-- Disable highlighting whilw you search but does incremental search, basically while you type it shows stuff
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Enable true colors where it can
vim.opt.termguicolors = true

-- Shows always 8 column top or bottom to not reach the end of the file
vim.opt.scrolloff = 8

-- this is a valid carachter to use in file name
vim.opt.isfname:append("@-@")

-- This is difficult so basically when the cursor stays idle after sometimes Vim triggers an event that can be used.
vim.opt.updatetime = 50

-- shoe the column for format purposes
vim.opt.colorcolumn = "120"
-- this option works in parallel with the debugger by enabling signs in case there are to show
vim.opt.signcolumn = "yes"

-- set encoding, uuuuh
vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- tries to show the name of the file as the title of the terminal tab nvim tab
vim.opt.title = true

-- option regarding the line shows the command and it is always shown
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2

-- use zsh as shell for running command that are external
vim.opt.shell = "zsh"

-- Case insensitive searching UNLESS /C or capital in search
vim.opt.ignorecase = true

-- vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.path:append({ "**" }) -- Finding files - Search down into subfolders
vim.opt.wildignore:append({ "*/node_modules/*" })
--vim.opt.splitbelow = true -- Put new windows below current
--vim.opt.splitright = true -- Put new windows right of current
--vim.opt.splitkeep = "cursor"
vim.opt.mouse = ""

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Add asterisks in block comments or whatever othe block comment means exists. For example in lua it keeps addin `--`
vim.opt.formatoptions:append({ "r" })
