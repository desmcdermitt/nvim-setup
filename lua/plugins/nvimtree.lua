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
            view = {
                width = 25,
            },
        })
        vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>")
    end
}

