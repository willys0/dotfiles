
return function(use)
    use {
        'nvim-neo-tree/neo-tree.nvim', -- File explorer
        branch = "v3.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        },
        config = function()
            require("neo-tree").setup({
                close_if_last_window = true,
                enable_git_status = true,
                enable_diagnostics = true,
                sort_case_insensitive = true,
                filesystem = {
                    -- filtered_items = {
                        --     visible = true,
                        --     hide_hidden = true
                        -- },
                        follow_current_file = {
                            enabled = true,  -- Optional: makes the current file selected in neo-tree
                        },
                        group_empty_dirs = true,     -- Optional: groups empty directories together
                        sort_by = "type",           -- Ensures folders are listed before files
                        sorted_items = true,         -- Enables sorting in `neo-tree`
                        sort = {
                            folders_first = true,
                            folder = "asc",  -- Sort folders in ascending order
                            file = "asc",    -- Sort files in ascending order
                            -- You can also use "desc" for descending order if needed
                        },
                        use_libuv_file_watcher = true,  -- Refreshes Neo-tree when files change
                    },
                    window = {
                        position = "float",
                        width = 30,  -- Adjust the width as needed
                        height = 30, -- Adjust the height as needed
                        -- width = function()
                            --   return vim.api.nvim_get_option("columns")  -- Full width
                            -- end,
                            -- height = function()
                                --   return vim.api.nvim_get_option("lines")  -- Full height
                                -- end,

                            },
                            preview = {
                                enable = true,        -- Enable preview
                            }
                            --default_component_configs = {
                                --    preview = {
                                    --        enable = true,        -- Enable preview
                                    --        use_float = true,     -- Use floating window for preview
                                    --        float_options = {
                                        --            border = "rounded",  -- Border style for the preview window
                                        --            width = 40,          -- Width of the floating preview window
                                        --            height = 30,         -- Height of the floating preview window
                                        --            relative = "editor", -- Make the float relative to the editor
                                        --        },
                                        --    },
                                        --},
                                    })
                vim.api.nvim_create_autocmd("VimResized", {
                  callback = function()
                    if vim.fn.exists(':Neotree') then
                      require("neo-tree.command").execute({ action = "close" })
                      require("neo-tree.command").execute({ action = "toggle" })
                    end
                  end,
                })
        end
    }
end
