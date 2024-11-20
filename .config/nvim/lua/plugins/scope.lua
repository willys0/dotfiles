return function(use)
    use {
        'tiagovla/scope.nvim',
        requires = {
            'nvim-telescope/telescope.nvim', 
        },
        config = function()
            require("scope").setup({})
            require("telescope").load_extension("scope")
        end
    }
end
