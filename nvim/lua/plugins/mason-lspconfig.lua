return {
	"williamboman/mason-lspconfig.nvim",

	config = function()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"html",
				"cssls",
				"vtsls",
				"vimls",
				"bashls",
				"jsonls",
				"emmet_language_server",
				"eslint",
        'clangd',
        "vue_ls",
        "intelephense",
			},

      automatic_installation = true
		})
	end
}
