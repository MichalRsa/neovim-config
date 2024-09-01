return {
  'stevearc/conform.nvim',
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        -- Conform will run multiple formatters sequentially
        javascript = { "prettierd", "prettier", stop_after_first = true },
      },
    })


    vim.keymap.set('n', '<leader>fm', vim.lsp.buf.format, {})
  end
}
