local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

autocmd("TextYankPost", {
    group = augroup("highlight_yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank({ higroup = "IncSearch", timeout = 150 })
    end,
})

autocmd("BufWritePre", {
    group = augroup("trim_whitespace", { clear = true }),
    pattern = "*",
    command = "%s/\\s\\+$//e",
})

autocmd("BufReadPost", {
    group = augroup("restore_cursor", { clear = true }),
    callback = function()
        local mark = vim.api.nvim_buf_get_mark(0, '"')
        if mark[1] > 0 and mark[1] <= vim.api.nvim_buf_line_count(0) then
            pcall(vim.api.nvim_win_set_cursor, 0, mark)
        end
    end,
})

vim.filetype.add({
    extension = {
        bicep = "bicep",
    },
})
