vim.api.nvim_set_option('termguicolors', true)

vim.api.nvim_set_option('scrolloff', 4)

 -- search
vim.api.nvim_set_option('ignorecase', true)
vim.api.nvim_set_option('smartcase', true)

 -- replace
vim.api.nvim_set_option('inccommand', 'split')

vim.api.nvim_set_option('clipboard', 'unnamedplus')

 -- appearance
vim.api.nvim_win_set_option(0, 'number', true)
vim.api.nvim_win_set_option(0, 'cursorline', true)
vim.api.nvim_win_set_option(0, 'signcolumn', 'yes:1')

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
  pattern = "*",
  callback = function(args)
     -- tab & indent each filetype
    -- print(args.match)
    vim.api.nvim_buf_set_option(0, 'tabstop', 2)
    vim.api.nvim_buf_set_option(0, "smartindent", true)

    vim.api.nvim_buf_set_option(0, 'shiftwidth', 0)
    vim.api.nvim_buf_set_option(0, 'expandtab', true)
  end,
})

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
  pattern = "*.rs",
  callback = function(args)
     -- tab & indent each filetype
    -- print(args.match)
    vim.api.nvim_buf_set_option(0, 'tabstop', 4) -- use 4 for rust
    vim.api.nvim_buf_set_option(0, "smartindent", true)

    vim.api.nvim_buf_set_option(0, 'shiftwidth', 0)
    vim.api.nvim_buf_set_option(0, 'expandtab', true)
  end,
})

 -- psuedo-transparency for a floating window
vim.api.nvim_win_set_option(0, "winblend", 20)

