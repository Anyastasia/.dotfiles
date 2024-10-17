return {
	"williamboman/mason-lspconfig.nvim",

	config = function()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"html",
				"cssls",
				"ts_ls",
				"vimls",
				"bashls",
				"jsonls",
				"emmet_language_server",
				"eslint",
        'clangd',
        "vuels",
			}
		})
	end
}
