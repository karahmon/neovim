return{{
  "williamboman/mason.nvim",
  config = function()
    require("mason").setup() 
  end
},{
    "williamboman/mason-lspconfig.nvim",
    config = function()
    require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls","astro","bashls","clangd","cssls","tailwindcss","templ","graphql",
          "html","eslint","jsonls","ast_grep","ltex","nginx_language_server",
          "prismals","harper_ls","rust_analyzer","solidity","sqlls","svelte","tflint",
          "taplo","zls"}
      })
    end
  },
      {
          "neovim/nvim-lspconfig",
          config = function()
          local lspconfig = require("lspconfig")
          lspconfig.lua_ls.setup({})
          lspconfig.rust_analyzer.setup({})
          vim.keymap.set("n","K",vim.lsp.buf.hover,{})
          vim.keymap.set("n","gd",vim.lsp.buf.definition,{})
          vim.keymap.set({"n","v"},"<leader>ca",vim.lsp.buf.code_action,{})   
      end
        }
    }


