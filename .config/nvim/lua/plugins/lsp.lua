return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "mason-org/mason.nvim",
    "mason-org/mason-lspconfig.nvim",
    "jay-babu/mason-nvim-dap.nvim",
    { "saghen/blink.cmp", version = "1.*" },
    { "saghen/blink.compat", version = "1.*" },
    "rafamadriz/friendly-snippets",
    { "L3MON4D3/LuaSnip", version = "v2.0" },
    "fang2hou/blink-copilot",
  },
  opts = {},
  config = function()
    vim.diagnostic.config({
      virtual_text = {
        current_line = true,
        source = true,
      },
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = "●",
          [vim.diagnostic.severity.WARN] = "▲",
          [vim.diagnostic.severity.HINT] = "◆",
          [vim.diagnostic.severity.INFO] = "■",
        },
      },
      float = {
        border = "rounded",
        source = true,
      },
      underline = true,
      update_in_insert = false,
      severity_sort = true,
    })

    local capabilities = vim.tbl_deep_extend("force", {}, vim.lsp.protocol.make_client_capabilities())
    capabilities = require("blink.cmp").get_lsp_capabilities(capabilities)

    require("mason").setup({
      ui = {
        border = "rounded",
      },
    })
    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",
        "gopls",
        "yamlls",
        "terraformls",
        "bashls",
        "copilot",
        "dotls",
      },
    })
    require("mason-nvim-dap").setup({
      ensure_installed = {
        "delve",
        "codelldb",
        "js-debug-adapter",
      },
      automatic_installation = true,
    })

    vim.lsp.config("lua_ls", {
      settings = {
        Lua = {
          runtime = {
            version = "LuaJIT",
          },
          diagnostics = {
            globals = {
              "vim",
              "require",
            },
          },
          workspace = {
            library = vim.api.nvim_get_runtime_file("", true),
          },
          telemetry = {
            enable = false,
          },
          sources = {
            default = { "lsp", "snippets", "path", "buffer" },
            providers = {},
          },
        },
      },
    })

    require("luasnip.loaders.from_vscode").lazy_load()
    require("blink.cmp").setup({
      signature = { enabled = true },
      completion = {
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 500,
        },
      },
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
        per_filetype = {
          toml = { "crates", "lsp", "path", "snippets", "buffer" },
        },
        providers = {
          crates = {
            name = "crates",
            module = "blink.compat.source",
            async = true,
          },
        },
      },
    })
  end,
}
