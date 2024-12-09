return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"astro",
					"bashls",
					"clangd",
					"cssls",
					"tailwindcss",
					"templ",
					"graphql",
					"html",
					"eslint",
					"jsonls",
					"ast_grep",
					"ltex",
					"nginx_language_server",
					"prismals",
					"harper_ls",
					"rust_analyzer",
					"solidity",
					"sqlls",
					"svelte",
					"tflint",
					"ts_ls",
					"taplo",
					"zls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capablities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capablities = capablities,
			})
			lspconfig.ts_ls.setup({
				capablities = capablities,
			})
			lspconfig.gopls.setup({
				capablities = capablities,
			})
			lspconfig.pyright.setup({
				capablities = capablities,
			})
			lspconfig.rust_analyzer.setup({
				capablities = capablities,
			})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
