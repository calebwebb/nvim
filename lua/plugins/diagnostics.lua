return {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "LspAttach",
    priority = 1000,
    config = function()
        vim.diagnostic
            .config({
                virtual_text = false,
                signs =
                {
                    text =
                    {
                        [vim.diagnostic.severity.ERROR] = "",
                        [vim.diagnostic.severity.WARN] = "",
                        [vim.diagnostic.severity.HINT] = "",
                        [vim.diagnostic.severity.INFO] = "",
                    },
                },
            })

        require("tiny-inline-diagnostic")
            .setup({
                preset = "modern",
                options =
                {
                    show_source = true,
                    throttle = 20,
                    softwrap = 80,
                    multiple_diag_under_cursor = true,
                    show_all_diags_on_yank = true,
                },
            })
    end,
}
