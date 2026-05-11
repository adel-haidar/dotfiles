return {
  "MysticalDevil/inlay-hints.nvim",
  event = "LspAttach",
  dependencies = { "neovim/nvim-lspconfig" },
  config = function()
    require("inlay-hints").setup()
    require("lspconfig").jdtls.setup({
      settings = {
        java = {
          inlayHints = {
            parameterNames = {
              enabled = "",
              exclusions = { "this" },
            },
          },
        },
      },
    })
  end,
}
