vim.g.dap_virtual_text = true
vim.g.rustfmt_autosave = 1

-- Solidity indent
vim.api.nvim_exec([[
        augroup SolidityIndent
            autocmd FileType solidity setlocal shiftwidth=4
        augroup END;
    ]], true)
-- Solidity strip two or more blank lines
vim.api.nvim_exec([[
        augroup SolidityNewLine
              autocmd BufWritePre *.sol if search('\n\n\{2,}', 'nw') | %s/\n\n\{2,}/\r\r/g | endif
        augroup END;
]], true)

