vim.api.nvim_create_autocmd({"InsertLeave", "TextChanged", "TextChangedI"}, {
  pattern = "*",
  command = "silent! write",
})

