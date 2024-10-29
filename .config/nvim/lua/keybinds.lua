-- Leader key
vim.g.mapleader = ' ' -- Space as the leader key

vim.api.nvim_set_keymap('n', '<Leader>qq', ':qa<CR>', { noremap = true, silent = true, desc = "Quit"})

-- Window
-- vim.api.nvim_set_keymap('n', '<Leader>w' ,'w<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<Leader>ws', ':split<CR> :wincmd j<CR>', { noremap = true, silent = true, desc = "Split Horizontal"})
-- vim.api.nvim_set_keymap('n', '<Leader>wv', ':vsplit<CR> :wincmd l<CR>', { noremap = true, silent = true, desc = "Split Vertical"})
vim.api.nvim_set_keymap('n', '<Leader>wss', ':split<CR> :wincmd j<CR>', { noremap = true, silent = true, desc = "Split Horizontal"})
vim.api.nvim_set_keymap('n', '<Leader>wvv', ':vsplit<CR> :wincmd l<CR>', { noremap = true, silent = true, desc = "Split Vertical"})
vim.api.nvim_set_keymap('n', '<Leader>ws+', '5<C-w>+', { noremap = true, silent = true, desc = "Increase Window Height"})
vim.api.nvim_set_keymap('n', '<Leader>ws-', '5<C-w>-', { noremap = true, silent = true, desc = "Decrease Window Height"})
vim.api.nvim_set_keymap('n', '<Leader>wv+', '10<C-w>>', { noremap = true, silent = true, desc = "Increase Window Width"})
vim.api.nvim_set_keymap('n', '<Leader>wv-', '10<C-w><', { noremap = true, silent = true, desc = "Decrease Window Width"})
vim.api.nvim_set_keymap('n', '<Leader>wh', '<C-w>h', { noremap = true, silent = true, desc = "Go to Left Window"})
vim.api.nvim_set_keymap('n', '<Leader>wj', '<C-w>j', { noremap = true, silent = true, desc = "Go to Down Window"})
vim.api.nvim_set_keymap('n', '<Leader>wk', '<C-w>k', { noremap = true, silent = true, desc = "Go to Up Window"})
vim.api.nvim_set_keymap('n', '<Leader>wl', '<C-w>l', { noremap = true, silent = true, desc = "Go to Right Window"})
vim.api.nvim_set_keymap('n', '<Leader>wq', '<C-w>q', { noremap = true, silent = true, desc = "Close active window"})
vim.api.nvim_set_keymap('n', '<Leader>wQ', '<C-w>o', { noremap = true, silent = true, desc = "Close all other windows"})
vim.api.nvim_set_keymap('n', '<Leader>wf', '<C-w>|<C-w>_', { noremap = true, silent = true, desc = "Focus active window"})
vim.api.nvim_set_keymap('n', '<Leader>w=', '<C-w>=', { noremap = true, silent = true, desc = "Reset window sizes"})

-- File
vim.api.nvim_set_keymap('n', '<Leader>ff', ':Telescope find_files <CR>', { noremap = true, silent = true, desc = "Search for file"})
vim.api.nvim_set_keymap('n', '<Leader>.', ':Telescope find_files <CR>', { noremap = true, silent = true, desc = "Search for file"})
vim.api.nvim_set_keymap('n', '<Leader>fF', ':Telescope find_files hidden=true<CR>', { noremap = true, silent = true, desc = "Search for file (with hidden)"})
vim.api.nvim_set_keymap('n', '<Leader>f/', ':Telescope live_grep<CR>', { noremap = true, silent = true, desc = "Find in files"})
vim.api.nvim_set_keymap('n', '<Leader>/', ':Telescope live_grep<CR>', { noremap = true, silent = true, desc = "Find in files"})
vim.api.nvim_set_keymap('n', '<Leader>fd', ':Telescope dir live_grep<CR>', { noremap = true, silent = true, desc = "Find in dir"})
vim.api.nvim_set_keymap('n', '<Leader>fp', ':Telescope find_files search_dirs={"~/.config/nvim/lua"}<CR>', { noremap = true, silent = true, desc = "Private config"})
vim.api.nvim_set_keymap('n', '<Leader>fb', ':Telescope file_browser hidden=true<CR>', { noremap = true, silent = true, desc = "Open file browser"})
vim.api.nvim_set_keymap('n', '<Leader>fB', ':Neotree toggle', { noremap = true, silent = true, desc = "Toggle side file browser"})

-- Buffers
vim.api.nvim_set_keymap('n', '<Leader>bb', ':Telescope buffers<CR>', { noremap = true, silent = true, desc = "Show open buffers"})
vim.api.nvim_set_keymap('n', '<Leader><Leader>', ':Telescope buffers<CR>', { noremap = true, silent = true, desc = "Show open buffers"})
vim.api.nvim_set_keymap('n', '<Leader>bq', ':bd<CR>', { noremap = true, silent = true, desc = "Close current buffer"})
vim.api.nvim_set_keymap('n', '<Leader>bQ', ':%bd|e#|bd#<CR>', { noremap = true, silent = true, desc = "Close all other buffers"})

-- Tabs
vim.api.nvim_set_keymap('n', '<Leader><Tab>n', ':tabnew<CR>', { noremap = true, silent = true, desc = "Open new tab"})
vim.api.nvim_set_keymap('n', '<Leader><Tab><Tab>', ':tabn<CR>', { noremap = true, silent = true, desc = "Go to next tab"})
vim.api.nvim_set_keymap('n', '<Leader><Tab><S-Tab>', ':tabp<CR>', { noremap = true, silent = true, desc = "Go to previous tab"})

-- Code
vim.api.nvim_set_keymap('n', '<Leader>cf', ':Telescope treesitter<CR>', { noremap = true, silent = true, desc = "Find symbol"})

-- Git
vim.api.nvim_set_keymap('n', '<Leader>gg', ':Neogit<CR>', { noremap = true, silent = true, desc = "Open NeoGit"})

-- Projects
vim.api.nvim_set_keymap('n', '<Leader>pp', ':Telescope projects<CR>', { noremap = true, silent = true, desc = "Find project"})
vim.api.nvim_set_keymap('n', '<Leader>pa', ':Telescope projects<CR>', { noremap = true, silent = true, desc = "Add project"})
