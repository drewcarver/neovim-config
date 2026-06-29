return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  branch = "main",
  config = function()
    local treesitterConfig = require("nvim-treesitter.configs")
    treesitterConfig.setup({
      auto_install = true,
      ensure_installed = { 
    "lua", 
    "vim", 
    "vimdoc", 
    "query", 
    "markdown", 
    "markdown_inline",
    "xml",     
    "json", 
    "yaml", 
    "javascript", 
    "markdown" },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}

