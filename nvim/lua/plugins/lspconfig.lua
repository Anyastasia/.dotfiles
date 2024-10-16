return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup()

		local lspconfig = require("lspconfig")

		local capabilities = require('cmp_nvim_lsp').default_capabilities()
		lspconfig.lua_ls.setup({
			capabilities = capabilities
		})
		lspconfig.html.setup({
			capabilities = capabilities
		})
		lspconfig.cssls.setup({
			capabilities = capabilities
		})
		lspconfig.ts_ls.setup({
			capabilities = capabilities
		})
		lspconfig.bashls.setup({
			capabilities = capabilities
		})
		lspconfig.vimls.setup({
			capabilities = capabilities
		})
		lspconfig.jsonls.setup({
			capabilities = capabilities
		})
		lspconfig.emmet_language_server.setup({
			capabilities = capabilities
		})
		lspconfig.eslint.setup({
			capabilities = capabilities
		})
    lspconfig.clangd.setup({
      capabilities = capabilities
    })

	end

}
