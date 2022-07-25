local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "pismice.lsp.configs"
require("pismice.lsp.handlers").setup()
require "pismice.lsp.null-ls"
