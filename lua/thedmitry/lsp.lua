vim.g.ale_completion_enabled = 1
vim.g.ale_lint_on_text_changed = 'never'

require('mason').setup()
require('mason-lspconfig').setup()

require("mason-lspconfig").setup_handlers {
    function (server_name) 
        require("lspconfig")[server_name].setup {}
    end,
}
