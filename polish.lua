return function()
  vim.filetype.add {
    pattern = {
      ["/tmp/neomutt.*"] = "markdown",
      ["/home/soliprem/notes/vimwiki/"] = "markdown",
    },
  }
  require "user.autocmds"
  require "user.mappings"
end
