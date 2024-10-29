-- Plugins, managed by Packer
require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' -- Packer manager itself

    -- List of plugins
    use {
        'nvim-treesitter/nvim-treesitter', -- Enhanced syntax highlighting
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    use { -- Automatically close brackets, etc.
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup {}
        end
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use 'folke/which-key.nvim' -- Show keys on pressing space
    use 'neovim/nvim-lspconfig' -- Language server protocol configurations
    use 'ranjithshegde/ccls.nvim' -- C/C++ language server
    use {
        'hrsh7th/nvim-cmp', -- Autocompletion
        requires = {
            'hrsh7th/vim-vsnip',
        }
    }
    use {
        'nvim-neo-tree/neo-tree.nvim', -- File explorer
        branch = "v3.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        }
    }
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.8',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    use { 'dracula/vim', as = 'dracula' } -- Dracula theme
    use 'nvim-tree/nvim-web-devicons'
    use 'echasnovski/mini.icons'
    use {
        'ahmedkhalf/project.nvim'
    }
    use {
        'rmagatti/auto-session',
        require("auto-session").setup {
            enabled = false,
            auto_save = false,
            auto_create = false,
            auto_restore = false
        }
    }
    use {
        'nvim-telescope/telescope-file-browser.nvim',
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    }
    use {
        'folke/persistence.nvim'
    }
    use {
        'farmergreg/vim-lastplace'
    }
    use {
        'NeogitOrg/neogit',
        tag = "v0.0.1",
        requires = {
            "nvim-lua/plenary.nvim",         -- required
            "sindrets/diffview.nvim",        -- optional - Diff integration 
        },
        require('neogit').setup {
            graph_style = "unicode"
        }
    }
end)

-- Treesitter configuration
require'nvim-treesitter.configs'.setup {
    ensure_installed = "all",
    highlight = {
        enable = true,
    },
}

require("neo-tree").setup({
    close_if_last_window = true,
    enable_git_status = true,
    enable_diagnostics = true,
    sort_case_insensitive = true
})

-- Autocompletion, nvim-cmp
local cmp = require'cmp'
cmp.setup({
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body) -- Requires vsnip
		end,
	},
	mapping = cmp.mapping.preset.insert({
		['<Tab>'] = cmp.mapping.select_next_item(),
		['<S-Tab'] = cmp.mapping.select_prev_item(),
	}),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'vsnip' },
	})
})

require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'auto',
    }
}

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

require'lspconfig'.lua_ls.setup{}
-- require'lspconfig'.ccls.setup{}
require("ccls").setup{}

require("project_nvim").setup {
    manual_mode = true
}

-- local fb_actions = require "telescope._extensions.file_browser.actions"
-- require('telescope').setup {
--     extensions {
--         file_browser {
--             hidden = true
--         }
--     }
-- }
require("telescope").load_extension "file_browser"
require('telescope').load_extension('projects')
--     defaults = {
--         vimgrep_arguments = {
--             'rg',
--             '--color=never',
--             '--no-heading',
--             '--with-filename',
--             '--line-number',
--             '--column',
--             '--smart-case',
--             '--hidden',
--         },
--     },
-- }
--
