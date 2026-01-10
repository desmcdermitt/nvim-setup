return {
    'stevearc/conform.nvim',
    opts = {},
    config = function()
        require("conform").setup({
            formatters_by_ft = {
                lua = { "stylua" },
                python = { "autoflake", "autopep8", "black" },
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
