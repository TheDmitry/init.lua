vim.g.ale_completion_enabled = 0
vim.g.ale_lint_on_text_changed = 'never'
vim.g.ale_disable_lsp = 1
require('mason').setup()
require('mason-lspconfig').setup()

require("mason-lspconfig").setup_handlers {
    function (server_name) 
        require("lspconfig")[server_name].setup {}
    end,
}

