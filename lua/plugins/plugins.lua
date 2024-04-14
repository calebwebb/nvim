return {
  -- Comment plugin
  {
    "numToStr/Comment.nvim",
    lazy = false,
  },

  -- Undotree plugin
  {
    "jiaoshijie/undotree",
    dependencies = "nvim-lua/plenary.nvim",
    config = true,
    keys = { { "<leader>uv", "<cmd>lua require('undotree').toggle()<cr>", desc = "Toggle Undotree" } },
  },

  -- Harpoon plugin
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
}
