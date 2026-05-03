return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
        },
    },
    config = function()
        local telescope = require("telescope")
        local builtin   = require("telescope.builtin")

        telescope.setup({
            defaults = {
                layout_strategy  = "horizontal",
                sorting_strategy = "ascending",
                layout_config    = {
                    prompt_position = "top",
                },
            },
        })

        telescope.load_extension("fzf")

        local map = vim.keymap.set
        map("n", "<leader>ff", builtin.find_files, { desc = "Telescope: find files" })
        map("n", "<leader>fg", builtin.live_grep, { desc = "Telescope: live grep" })
        map("n", "<leader>fb", builtin.buffers, { desc = "Telescope: buffers" })
        map("n", "<leader>fh", builtin.help_tags, { desc = "Telescope: help tags" })
        map("n", "<leader>fd", builtin.diagnostics, { desc = "Telescope: diagnostics" })
        map("n", "<leader>fs", builtin.lsp_document_symbols, { desc = "Telescope: document symbols" })
        map("n", "<leader>fr", builtin.lsp_references, { desc = "Telescope: references" })
    end,
}
