return {
    'stevearc/conform.nvim',
    opts = {},
    config = function()
        require("conform").setup({
        formatters_by_ft = {
            lua = { "stylua" },
            -- Conform will run multiple formatters sequentially
            python = { "autopep8"},
            -- You can customize some of the format options for the filetype (:help conform.format)
            rust = { "rustfmt", lsp_format = "fallback" },
            -- Conform will run the first available formatter
            javascript = { "prettierd", "prettier", stop_after_first = true },
            },
        })
        local conform = require("conform")
        vim.keymap.set("n", "<leader>cf", conform.format(), { desc = "Format File" })
    end,
    keys = {
        { 
            "<leader>bf",
            '<cmd>lua require("conform").format()<CR>',
            { desc = "Format Buffer" },
        }
    }
}
