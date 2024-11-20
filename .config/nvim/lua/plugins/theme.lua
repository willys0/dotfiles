
return function(use)
    use {
        'nvim-tree/nvim-web-devicons',
        'echasnovski/mini.icons',
        'dracula/vim', as = 'dracula', -- Dracula theme
        'folke/tokyonight.nvim',
        config = function()
        end
    }
    vim.cmd("colorscheme dracula")
end
