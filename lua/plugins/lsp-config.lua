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
                ensure_installed = { "lua_ls" }
            })
        end
    },
    { -- enables communication between nvim and the lsp
        "neovim/nvim-lspconfig",

        config = function()
            local lspconfig = require("lspconfig")

            -- need to call this for every lsp we use
            lspconfig.lua_ls.setup({})
        end
    }
}

