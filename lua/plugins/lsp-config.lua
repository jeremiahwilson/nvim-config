return {
    { -- "package manager" for language servers
        "williamboman/mason.nvim",

        config = function()
            require('mason').setup()
        end
    },
    { -- tell mason which lsps to install
        "williamboman/mason-lspconfig.nvim",

        config = function()
            require('mason-lspconfig').setup({
                ensure_installed = { "lua_ls", "ts_ls", "eslint", "html" }
            })
        end
    },
    { -- enables communication between nvim and the lsp
        "neovim/nvim-lspconfig",

        config = function()
            local lspconfig = require("lspconfig")

            -- need to call this for every lsp we use
            lspconfig.lua_ls.setup({})
            lspconfig.ts_ls.setup({})
            lspconfig.eslint.setup({})
            lspconfig.html.setup({})
            vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
            vim.keymap.set('n', '<leader>f', vim.cmd.EslintFixAll, {})
            vim.keymap.set('n', '<leader>K', vim.diagnostic.open_float, {})
        end
    }
}

