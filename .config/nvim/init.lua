vim.o.number = true -- Enable line numbers
vim.o.relativenumber = true -- Enable relative line numbers
vim.o.tabstop = 4 -- Number of spaces a tab represents
vim.o.shiftwidth = 4 -- Number of spaces for each indentation
vim.o.expandtab = true -- Convert tabs to spaces
vim.o.smartindent = true -- Automatically indent new lines
-- vim.o.wrap = false -- Disable line wrapping
vim.o.cursorline = true -- Highlight the current line
vim.o.termguicolors = true -- Enable 24-bit RGB colors
vim.o.cc = "80" -- Column border

vim.o.clipboard = 'unnamedplus'

-- Syntax highlighting and filetype plugins
vim.cmd('syntax enable')
vim.cmd('filetype plugin indent on')

-- Auto close command window
vim.cmd([[
    autocmd CmdWinEnter * quit
]])

vim.cmd([[
    augroup ShowCursorline
        autocmd!
        autocmd WinEnter * set cul
        autocmd WinLeave * set nocul
    augroup END
]])

require("plugins")
require("keybinds")
require("setup")

vim.api.nvim_create_autocmd("VimEnter", {
    pattern = "*",
    command = "set nornu nonu | Neotree left show"
})

vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "*",
    command = "set rnu nu"
})


-- vim.api.nvim_create_autocmd("DirChanged", {
--     pattern = "*",
--     command = "Neotree reveal"
-- })


