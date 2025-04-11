return {
  "vague2k/huez.nvim",
  -- if you want registry related features, uncomment this
  -- import = "huez-manager.import"
  dependencies = {
    "nvim-lualine/lualine.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  branch = "stable",
  event = "UIEnter",
  config = function()
    require("huez").setup({})
    require('lualine').setup({})
  end,
}
