local handlers = {
	function (server_name)
		require("lspconfig")[server_name].setup {}
	end,
}

return {
	"williamboman/mason-lspconfig.nvim",
	init = function ()
		require("mason").setup()
	end,
	opts = {
		ensure_installed = {
			"cssls",
			"eslint",
			"html",
			"java_language_server",
			"jsonls",
			"lua_ls",
			"pyright",
			"tailwindcss",
			"ts_ls",
		},
		handlers = handlers,
	},
	event = "BufReadPre",
	dependencies = {
		"williamboman/mason.nvim",
	}
}
