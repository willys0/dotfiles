
return function(use)
    use {
        'akinsho/bufferline.nvim',
        tag = "*", 
        requires = 'nvim-tree/nvim-web-devicons',
        config = function()
            require("bufferline").setup{
                options = {
                    mode = "tabs",
                    diagnostics = "nvim_lsp",
                    numbers = "ordinal",
                    always_show_bufferline = true,
                    separator_style = "slant",
                    themable = true,
                    name_formatter = function(buf)
                        local tabpage = vim.api.nvim_tabpage_get_number(buf.tabnr)
                        local cwd = vim.fn.fnamemodify(vim.fn.getcwd(-1, tabpage), ":t")
                        local filename = vim.fn.fnamemodify(buf.name, ":t")
                        return cwd .. " - " .. filename
                    end,
                    offsets = {
                        {
                            -- filetype = "NvimTree",
                            filetype = "neo-tree",
                            text = "File Explorer",
                            text_align = "left",
                            separator = true
                        }
                    },
                }
            }
        end
    }
end
