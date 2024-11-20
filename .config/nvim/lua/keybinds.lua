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
--vim.api.nvim_set_keymap('n', '<Leader>wf', '<C-w>|<C-w>_', { noremap = true, silent = true, desc = "Focus active window"})
vim.api.nvim_set_keymap('n', '<Leader>wf', ':WindowsMaximize<CR>', { noremap = true, silent = true, desc = "Focus active window"})
--vim.api.nvim_set_keymap('n', '<Leader>w=', '<C-w>=', { noremap = true, silent = true, desc = "Reset window sizes"})
vim.api.nvim_set_keymap('n', '<Leader>w=', ':WindowsEqualize<CR>', { noremap = true, silent = true, desc = "Reset window sizes"})

-- File
vim.api.nvim_set_keymap('n', '<Leader>ff', ':Telescope find_files <CR>', { noremap = true, silent = true, desc = "Search for file"})
vim.api.nvim_set_keymap('n', '<Leader>.', ':Telescope find_files <CR>', { noremap = true, silent = true, desc = "Search for file"})
vim.api.nvim_set_keymap('n', '<Leader>fF', ':Telescope find_files hidden=true<CR>', { noremap = true, silent = true, desc = "Search for file (with hidden)"})
vim.api.nvim_set_keymap('n', '<Leader>f/', ':Telescope live_grep<CR>', { noremap = true, silent = true, desc = "Find in files"})
vim.api.nvim_set_keymap('n', '<Leader>/', ':Telescope live_grep<CR>', { noremap = true, silent = true, desc = "Find in files"})
vim.api.nvim_set_keymap('n', '<Leader>fd', ':Telescope dir live_grep<CR>', { noremap = true, silent = true, desc = "Find in dir"})
vim.api.nvim_set_keymap('n', '<Leader>fp', ':Telescope find_files search_dirs={"~/.config/nvim"}<CR>', { noremap = true, silent = true, desc = "Private config"})
vim.api.nvim_set_keymap('n', '<Leader>fb', ':Neotree reveal<CR>', { noremap = true, silent = true, desc = "Open file browser"})
vim.api.nvim_set_keymap('n', '<Leader>fB', ':Neotree toggle<CR>', { noremap = true, silent = true, desc = "Open file browser, working directory"})
--vim.api.nvim_set_keymap('n', '<Leader>fb', ':Telescope file_browser hidden=true<CR>', { noremap = true, silent = true, desc = "Open file browser"})
--vim.api.nvim_set_keymap('n', '<Leader>fB', ':Neotree toggle<CR>', { noremap = true, silent = true, desc = "Toggle side file browser"})
vim.api.nvim_set_keymap('n', '<leader>fn', ':lua OpenNeoTreeAndCreateFile()<CR>', { noremap = true, silent = true, desc = "Create new file" })

-- Buffers
vim.api.nvim_set_keymap('n', '<Leader>bb', ':Telescope buffers<CR>', { noremap = true, silent = true, desc = "Show open buffers"})
vim.api.nvim_set_keymap('n', '<Leader>bB', ':Telescope scope buffers<CR>', { noremap = true, silent = true, desc = "Show ALL open buffers"})
vim.api.nvim_set_keymap('n', '<Leader><Leader>', ':Telescope buffers<CR>', { noremap = true, silent = true, desc = "Show open buffers"})
vim.api.nvim_set_keymap('n', '<Leader>bk', ':bp<bar>sp<bar>bn<bar>bd<CR>', { noremap = true, silent = true, desc = "Kill current buffer"})
vim.api.nvim_set_keymap('n', '<Leader>bK', ':%bd|e#|bd#<CR>', { noremap = true, silent = true, desc = "Kill all other buffers"})

-- Tabs
vim.api.nvim_set_keymap('n', '<Leader><Tab>n', ':lua NewWorkspace()<CR>', { noremap = true, silent = true, desc = "Open new tab"})
vim.api.nvim_set_keymap('n', '<Leader><Tab><Tab>', ':tabn<CR>', { noremap = true, silent = true, desc = "Go to next tab"})
vim.api.nvim_set_keymap('n', '<Leader><Tab><S-Tab>', ':tabp<CR>', { noremap = true, silent = true, desc = "Go to previous tab"})
vim.api.nvim_set_keymap('n', '<Leader><Tab>q', ':tabclose<CR>', { noremap = true, silent = true, desc = "Close the current tab"})

for i = 0,9,1
do
    vim.api.nvim_set_keymap('n', '<Leader><Tab>' .. i, i .. 'gt', { noremap = true, silent = true, desc = "Open tab " .. i})
end

-- Code
vim.api.nvim_set_keymap('n', '<Leader>cf', ':Telescope treesitter<CR>', { noremap = true, silent = true, desc = "Find symbol"})

-- Git
vim.api.nvim_set_keymap('n', '<Leader>gg', ':Neogit<CR>', { noremap = true, silent = true, desc = "Open NeoGit"})

-- Projects
vim.api.nvim_set_keymap('n', '<Leader>pp', ':Telescope projects<CR>:Neotree show<CR>', { noremap = true, silent = true, desc = "Find project"})
vim.api.nvim_set_keymap('n', '<Leader>pa', ':Telescope projects<CR>', { noremap = true, silent = true, desc = "Add project"})

-- Docker
vim.api.nvim_set_keymap('n', '<Leader>dd', ':lua OpenLazydocker()<CR>', { noremap = true, silent = true, desc = "Open Lazydocker"})

-- Remote
-- vim.api.nvim_set_keymap('n', '<Leader>rc', ":RemoteSSHFSConnect<CR>", { noremap = true, silent = true, desc = "Connect to remote"})
vim.api.nvim_set_keymap('n', '<Leader>rc', ":lua ConnectToRemote()<CR>", { noremap = true, silent = true, desc = "Connect to remote"})
vim.api.nvim_set_keymap('n', '<Leader>rd', ":RemoteSSHFSDisconnect<CR>", { noremap = true, silent = true, desc = "disconnect from remote"})
vim.api.nvim_set_keymap('n', '<Leader>re', ":RemoteSSHFSEdit<CR>", { noremap = true, silent = true, desc = "Edit remotes"})

function OpenNeoTreeAndCreateFile()
    -- Open Neo-tree and immediately activate the 'add' action
    vim.cmd("Neotree filesystem float reveal reveal_force_cwd") -- Opens Neo-tree in filesystem mode
    vim.defer_fn(function()
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("a", true, true, true), "a", true)
    end, 100)
end

local Terminal = require("toggleterm.terminal").Terminal

local docker_tui = "lazydocker"

local docker_client = Terminal:new {
    cmd = docker_tui,
    dir = "git_dir",
    hidden = true,
    direction = "float",
    float_opts = {
        border = 'double',
    },
}
function OpenLazydocker()
    docker_client:toggle()
end

function NewWorkspace()
    vim.cmd('tabe %')
    vim.cmd('Neotree left show')
end
