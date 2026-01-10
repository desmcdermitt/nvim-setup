return {
    'nvim-treesitter/nvim-treesitter',
    tag = 'v0.10.0',
    lazy = false,
    run = ':TSUpdate',
    config = function()
        require('nvim-treesitter').setup {
            ensure_installed = 'all',
            sync_install = true,
            ignore_install = { 'ipkg' },
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = true,
            },
            indent = {
                enable = true,
            },
        }
    end,
}
