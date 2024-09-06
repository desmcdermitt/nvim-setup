return  {
    'akinsho/toggleterm.nvim',
    version = "*",
    opts = {
        direction = 'float',
        auto_scroll = true,
    },
    keys = {
        { "<leader>gt", "<cmd>ToggleTerm<cr>", desc = "ToggleTerm" }
    }
}
