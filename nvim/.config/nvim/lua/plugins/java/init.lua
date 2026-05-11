return {
  "nvim-java/nvim-java",
  config = false,
  dependencies = {
    {
      "neovim/nvim-lspconfig",
      opts = {
        servers = {
          jdtls = {
            -- Your custom jdtls settings goes here
          },
        },
        setup = {
          jdtls = function()
            require("java").setup({
              -- Your custom nvim-java configuration goes here
              settings = {
                java = {
                  configuration = {
                    runtimes = {
                      {
                        name = "JavaSE-21",
                        path = "$JAVA_HOME",
                        default = true,
                      },
                    },
                  },
                },
                inlayHints = {
                  parameterNames = {
                    enabled = false,
                  },
                },
              },
              -- Explicitly disable inlay hints
              init_options = {
                extendedClientCapabilities = {
                  progressReportProvider = false,
                  inlayHintsProvider = false,
                },
              },
            })
          end,
        },
      },
    },
  },
}
