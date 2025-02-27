return
{
  "norcalli/nvim-colorizer.lua",
  config = function()
    require("colorizer").setup({
      '*', -- Enable for all file types
      css = { rgb_fn = true, hsl_fn = true, names = true },
      javascript = { names = false },
    }, { mode = "background"; }) -- Enable RGBA colors
  end
}
