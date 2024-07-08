local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("vim-settings")
require("lazy").setup("plugins")

--Write on save
vim.api.nvim_create_augroup("PrettierOnSave", { clear = true })

vim.api.nvim_create_autocmd("BufWritePost", {
  group = "PrettierOnSave",
  pattern = {"*.js", "*.ts", "*.tsx"},
  command = "silent! !prettier --write %",
})
