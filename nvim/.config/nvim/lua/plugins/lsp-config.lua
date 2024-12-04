return {
    { 'williamboman/mason.nvim', opts = { } },
    { 'williamboman/mason-lspconfig.nvim', opts = {
        ensure_installed = { 'lua_ls', 'pyright' }
        }
    },
    { 'neovim/nvim-lspconfig',
        config = function()
            local lspconfig = require('lspconfig')
            lspconfig.lua_ls.setup({})
            lspconfig.pyright.setup({})

            -- Use LspAttach to activate key bidning only when buffer is connected to server
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}
