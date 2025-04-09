vim.api.nvim_create_autocmd({"InsertLeave", "TextChanged", "TextChangedI"}, {
  pattern = "*",
  command = "silent! write",
})
vim.api.nvim_create_autocmd({"VimEnter"}, {
  command = "IBLDisable",

})
vim.api.nvim_create_autocmd({"BufWinEnter"}, {
  command = "IBLEnable",

})
