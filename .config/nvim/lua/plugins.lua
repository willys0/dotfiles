-- Plugins, managed by Packer
require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' -- Packer manager itself
    local plugin_files = vim.fn.globpath(vim.fn.stdpath('config') .. '/lua/plugins', '*.lua', false, true)
    for _, file in ipairs(plugin_files) do
        local plugin = file:match('lua/plugins/(.*).lua$')
        if plugin ~= 'init' then
            require('plugins.' .. plugin)(require('packer').use)
        end
    end

end)


