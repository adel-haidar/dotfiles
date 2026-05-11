return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      javascript = { "eslint_d" },
      typescript = { "eslint_d" },
      javascriptreact = { "eslint_d" },
      typescriptreact = { "eslint_d" },
      svelte = { "eslint_d" },
      python = { "pylint" },
      java = { "checkstyle" },
    }
    -- Configure Checkstyle
    lint.linters.checkstyle = {
      name = "checkstyle",
      cmd = "checkstyle",
      args = { "-c", "/Users/adel.haidar/dev/apoBank/config_files/apoBank_checkstyle.xml", "-" }, -- Replace with your Checkstyle config path
      stream = "stdout",
      ignore_exitcode = true,
      parser = require("lint.parser").from_json,
    }

    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })

    vim.keymap.set("n", "<leader>l", function()
      lint.try_lint()
    end, { desc = "Trigger linting for current file" })
  end,
}
