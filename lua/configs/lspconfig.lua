require("nvchad.configs.lspconfig").defaults()

-- Enable LSP servers
vim.lsp.enable {
  "html",
  "cssls",
  "eslint",
  "jsonls",
  "tailwindcss",
  "ts_ls",
  "clangd",
}

-- Lua LSP with Neovim-aware settings
vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          [vim.fn.expand "$VIMRUNTIME/lua"] = true,
          [vim.fn.expand "$VIMRUNTIME/lua/vim/lsp"] = true,
          [vim.fn.stdpath "data" .. "/lazy/ui/nvchad_types"] = true,
          [vim.fn.stdpath "data" .. "/lazy/lazy.nvim/lua/lazy"] = true,
        },
        maxPreload = 100000,
        preloadFileSize = 10000,
      },
    },
  },
})
vim.lsp.enable "lua_ls"
