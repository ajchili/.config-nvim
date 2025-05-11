require "config.lazy"
require "config.vim"

require("onedark").load()
require("bufferline").setup()
vim.cmd("COQnow -s")
