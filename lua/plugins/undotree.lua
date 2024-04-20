-- undotree.lua file

return {
    {
        "jiaoshijie/undotree",
        dependencies = "nvim-lua/plenary.nvim",
        config = true,
        keys = { { "<leader>uv", "<cmd>lua require('undotree').toggle()<cr>", desc = "Toggle Undotree" } },
    },
}
