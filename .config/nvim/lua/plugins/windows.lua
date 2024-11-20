return function(use)
    use {
        'anuvyklack/windows.nvim',
        requires = {
          "anuvyklack/middleclass",
          "anuvyklack/animation.nvim"
        },
        config = function()
            require("windows").setup({
                autowidth = {
                    enable = false
                },
                ignore = {
                    buftype = {
                        "quickfix"
                    },
                    filetype = {
                        "neo-tree"
                    }
                },
                animation = {
                    enable = true,
                    duration = 100,
                    fps = 30,
                    easing = "in_out_sine"
                }
            })
        end
    }
end
