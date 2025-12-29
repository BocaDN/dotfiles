return{
  "nvim-lua/plenary.nvim",
  lazy = true,
  dependencies = {
    "nvim-lua/popup.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    require("plenary")
  end,
  keys = {
    { "<leader>p", "<cmd>Plenary<cr>", desc = "Plenary" },
  },
}
