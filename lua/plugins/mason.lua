return {
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate",
        config = function()
            require("mason").setup({
                ui = {
                    icons = {
                        package_installed   = "✓",
                        package_pending     = "➜",
                        package_uninstalled = "✗",
                    },
                },
            })
        end,
    },
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        dependencies = { "williamboman/mason.nvim" },
        opts = {
            ensure_installed = {
                "lua-language-server",
                "powershell-editor-services",
                "gopls",
                "bash-language-server",
                "clang-format",
                "pyright",
                "gofumpt",
                "goimports",
                "shfmt",
                "black",
                "isort",
                "stylua",
            },
        },
    },
}
