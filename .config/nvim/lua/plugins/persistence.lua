
return function(use)
    use {
        'folke/persistence.nvim',
        config = function()
            require("persistence").setup{}
        end
    }
end
