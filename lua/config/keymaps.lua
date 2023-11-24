-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local function map(mode, key, remap, description, opts)
  opts.desc = description
  vim.keymap.set(mode, key, remap, opts)
end

local function nmap(key, remap, description)
  map("n", key, remap, description, {})
end

nmap("x", '"_x', "Delete without copying to clipboard and vim buffer")

nmap("<C-a>", "gg<S-v>G", { desc = "Select All" })

--keymap.set("v", "J", ":m '>+1<CR>gv=gv")
--vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- When doing page up and page down center selectiotion
nmap("<C-d>", "<C-d>zz", "PageUp and center cursor")
nmap("<C-u>", "<C-u>zz", "PageDown and center cursor")
-- When going to ext search or previous search center the selection
nmap("N", "Nzzzv", "Go to previous result in search and cente page on it")

map({ "n", "v" }, "<leader>d", [["_d]], "Delete without yanking", {})

nmap("<leader>si", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
