return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
      registries = {
        "github:nvim-java/mason-registry",
        "github:mason-org/mason-registry",
      },
    },
    --config = function()
    --	require("mason").setup()
    --end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
      handlers = {
        ["jdtls"] = function()
          require("java").setup({
            ensure_installed = { "lua_ls", "cssls", "dockerls", "html", "jdtls", "jsonls", "tsserver" },
            automatic_installation = true,
          })
        end,
      },
    },
    --	config = function()
    --		require("mason-lspconfig").setup({
    --			ensure_installed = { "lua_ls", "cssls", "dockerls", "html", "jdtls", "jsonls", "tsserver" },
    --			automatic_installation = true,
    --		})
    --	end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      require("java").setup()

      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.cssls.setup({
        capabilities = capabilities,
      })
      lspconfig.dockerls.setup({
        capabilities = capabilities,
      })
      lspconfig.html.setup({
        capabilities = capabilities,
      })
      lspconfig.jsonls.setup({
        capabilities = capabilities,
      })
      lspconfig.jdtls.setup({
        capabilities = capabilities,
        settings = {
          java = {
            configuration = {
              runtimes = {
                {
                  name = "Java-21",
                  path = "/Library/Java/JavaVirtualMachines/jdk-21.jdk/Contents/Home",
                  default = true,
                },
                {
                  name = "Java-11",
                  path = "/Library/Java/JavaVirtualMachines/jdk-11.jdk/Contents/Home",
                },
                {
                  name = "Java-8",
                  path = "/Library/Java/JavaVirtualMachines/jdk-1.8.jdk/Contents/Home",
                },
                {
                  name = "Java-7",
                  path = "/Library/Java/JavaVirtualMachines/jdk1.7.0_351.jdk/Contents/Home",
                },
                {
                  name = "Open-JDK-11",
                  path = "/Users/jayrorrc/Dev/dataprev/java/jdk-11.0.2.jdk/Contents/Home",
                },
              },
            },
          },
        },
      })
      lspconfig.tsserver.setup({
        capabilities = capabilities,
      })

      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
