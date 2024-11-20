return function(use)
    use {
        'rmagatti/auto-session',
        config = function()
            require("auto-session").setup {
                enabled = false,
                auto_save = false,
                auto_create = false,
                auto_restore = false
            }
        end
    }
end
