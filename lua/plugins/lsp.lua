return {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
        local capabilities = vim.lsp.protocol.make_client_capabilities()

        local ok, blink = pcall(require, "blink.cmp")
        if ok then
            capabilities = blink.get_lsp_capabilities(capabilities)
        end

        local on_attach = function(_, bufnr)
            local map = function(keys, func, desc)
                vim.keymap.set("n", keys, func, { buffer = bufnr, desc = "LSP: " .. desc })
            end
            map("gd", vim.lsp.buf.definition, "Go to definition")
            map("gD", vim.lsp.buf.declaration, "Go to declaration")
            map("gr", vim.lsp.buf.references, "Go to references")
            map("gi", vim.lsp.buf.implementation, "Go to implementation")
            map("K", vim.lsp.buf.hover, "Hover docs")
            map("<leader>rn", vim.lsp.buf.rename, "Rename symbol")
            map("<leader>ca", vim.lsp.buf.code_action, "Code action")
            map("<leader>d", vim.diagnostic.open_float, "Show diagnostics")
            map("[d", vim.diagnostic.goto_prev, "Prev diagnostic")
            map("]d", vim.diagnostic.goto_next, "Next diagnostic")
        end

        vim.api.nvim_create_autocmd("LspAttach", {
            callback = function(args)
                on_attach(nil, args.buf)
            end,
        })

        vim.lsp.config("*", {
            capabilities = capabilities,
        })

        vim.lsp.config("gopls", {
            settings = {
                gopls = {
                    analyses    = { unusedparams = true, shadow = true },
                    staticcheck = true,
                    gofumpt     = true,
                },
            },
        })

        vim.lsp.config("clangd", {
            filetypes = { "c", "cpp", "objc", "objcpp" },
            root_dir = function(fname)
                local util = require("vim.lsp.util")
                return util.root_pattern(
                    "compile_commands.json",
                    "compile_flags.txt",
                    "CMakeLists.txt",
                    ".clangd"
                )(fname)
            end,
            cmd = {
                "clangd",
                "--background-index",
                "--clang-tidy",
                "--header-insertion=iwyu",
                "--completion-style=detailed",
                "--query-driver=/usr/bin/clang++,/usr/bin/clang",
            },
        })

        vim.lsp.config("pyright", {
            settings = {
                python = {
                    analysis = {
                        typeCheckingMode       = "basic",
                        autoSearchPaths        = true,
                        useLibraryCodeForTypes = true,
                    },
                },
            },
        })

        vim.lsp.config("powershell_es", {
            bundle_path = vim.fn.stdpath("data") .. "/mason/packages/powershell-editor-services",
            settings = {
                powershell = {
                    codeFormatting = { preset = "OTBS" },
                },
            },
        })

        vim.lsp.config("lua_ls", {
            settings = {
                Lua = {
                    diagnostics = { globals = { "vim" } },
                    workspace   = { checkThirdParty = false },
                    telemetry   = { enable = false },
                },
            },
        })

        vim.lsp.enable({
            "bashls",
            "gopls",
            "clangd",
            "pyright",
            "powershell_es",
            "lua_ls",
        })
    end,
}
