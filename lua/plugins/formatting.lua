return {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = {
        formatters_by_ft = {
            go     = { "goimports", "gofumpt" },
            sh     = { "shfmt" },
            bash   = { "shfmt" },
            cpp    = { "clang-format" },
            c      = { "clang-format" },
            python = { "isort", "black" },
        },
        format_on_save = {
            timeout_ms   = 500,
            lsp_fallback = true,
        },
    },
}
