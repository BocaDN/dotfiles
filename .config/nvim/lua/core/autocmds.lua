vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged", "TextChangedI" }, {
  callback = function()
    local ft = vim.bo.filetype
    if vim.tbl_contains({ "html", "javascript", "typescript", "css", "scss" }, ft) then
      vim.cmd("silent! write")
    end
  end
})
vim.api.nvim_create_autocmd({ "VimEnter" }, {
  command = "IBLDisable",

})
vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
  command = "IBLEnable",

})
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  pattern = "*.dart",
  callback = function()
    vim.cmd("silent! write")
    vim.fn.system({ "tmux", "send-keys", "-t", "3", "r" })
  end,
})
