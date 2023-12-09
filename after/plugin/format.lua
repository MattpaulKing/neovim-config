require("lsp-format").setup {}
require("lspconfig").svelte.setup { on_attach = require("lsp-format").on_attach }
require("lspconfig").tailwindcss.setup { on_attach = require("lsp-format").on_attach }
require("lspconfig").tsserver.setup { on_attach = require("lsp-format").on_attach }
require("lspconfig").sqlls.setup { on_attach = require("lsp-format").on_attach }
