return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "jay-babu/mason-null-ls.nvim",
    },
    config = function()
        local mason_null_ls = require("mason-null-ls")
        local null_ls = require("null-ls")
        local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
        null_ls.setup({
            mason_null_ls.setup({
                ensure_installed = {
                    "stylua",
                    "prettier",
                    "black",
                    "isort",
                    "mypy",
                    "goimports",
                    "gofumpt",
                    "golines",
                },
            }),
            sources = {
                -- Lua
                null_ls.builtins.formatting.stylua,
                -- JavaScript
                null_ls.builtins.formatting.prettier,
                -- Python
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.isort,
                null_ls.builtins.diagnostics.mypy,
                -- Go
                null_ls.builtins.formatting.goimports,
                null_ls.builtins.formatting.gofumpt,
                null_ls.builtins.formatting.golines,
            },
            on_attach = function(client, bufnr)
                if client.supports_method("textDocument/formatting") then
                    vim.api.nvim_clear_autocmds({
                        group = augroup,
                        buffer = bufnr,
                    })
                    vim.api.nvim_create_autocmd("BufWritePre", {
                        group = augroup,
                        buffer = bufnr,
                        callback = function()
                            vim.lsp.buf.format({ bufnr = bufnr })
                        end,
                    })
                end
            end,
        })
        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
}
