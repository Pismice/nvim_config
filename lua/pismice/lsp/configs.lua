local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
    return
end

local lspconfig = require("lspconfig")

local servers = { "jsonls", "sumneko_lua", "rust_analyzer", "clangd", "dartls" }

lsp_installer.setup({
    ensure_installed = servers,
})

for _, server in pairs(servers) do
    local opts = {
        on_attach = require("pismice.lsp.handlers").on_attach,
        capabilities = require("pismice.lsp.handlers").capabilities,
    }
    local has_custom_opts, server_custom_opts = pcall(require, "pismice.lsp.settings." .. server)
    if has_custom_opts then
        opts = vim.tbl_deep_extend("force", opts, server_custom_opts)
    end
    lspconfig[server].setup(opts)
end
