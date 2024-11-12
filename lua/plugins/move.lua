return { 
    'fedepujol/move.nvim',
    dependencies = 'mrjones2014/legendary.nvim',
    opts = {},
    config = function()
        require('move').setup({})
        local opts = { noremap = true, silent = true }
        -- Visual-mode commands
        vim.keymap.set('v', '<A-j>', ':MoveBlock(1)<CR>', opts)
        vim.keymap.set('v', '<A-k>', ':MoveBlock(-1)<CR>', opts)
        vim.keymap.set('v', '<A-h>', ':MoveHBlock(-1)<CR>', opts)
        vim.keymap.set('v', '<A-l>', ':MoveHBlock(1)<CR>', opts)
    end,
}
