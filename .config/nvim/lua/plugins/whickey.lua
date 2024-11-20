return function(use)
    use {
        'folke/which-key.nvim', -- Show keys on pressing space
        config = function()
            require("which-key").add({
                { '<leader>q', group = "Session"},
                { "<leader>b", group = "Buffer"},
                { "<leader>f", group = "File"},
                { "<leader>w", group = "Window"},
                { "<leader>ws", group = "Horizontal Actions"},
                { "<leader>wv", group = "Vertical Actions"},
                { "<leader>c", group = "Code"},
                { "<leader>g", group = "Git"},
                { "<leader>p", group = "Project"},
            })
        end
    }
end
