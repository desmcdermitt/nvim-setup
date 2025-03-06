return {
    'nvim-tree/nvim-tree.lua',
    requires = {
        'nvim-tree/nvim-web-devicons', -- optional
    },
    config = function()
        require("nvim-tree").setup({
            sort = {
                sorter = "case_sensitive",
            },
            view = { adaptive_size = true },
        })
        vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>")
    end
}

