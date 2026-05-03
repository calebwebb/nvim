return {
    "lervag/vimtex",
    lazy = false,
    init = function()
        vim.g.vimtex_view_method              = "zathura" -- change to "skim" or "sioyek" as needed
        vim.g.vimtex_compiler_method          = "latexmk"
        vim.g.vimtex_mappings_enabled         = 1
        vim.g.tex_flavor                      = "latex"
        vim.g.vimtex_quickfix_open_on_warning = 0
    end,
}
