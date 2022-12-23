# "Cute".nvim

Not cute neovim management plugin.

# Install

packer.nvim

  use "FZZkill/Cute.nvim"

vim-plug

  Plug 'FZZkill/Cute.nvim'

# Usage

For example, To bind keys:

  local cute = require("cute")

  local N_maps = {
    {"H", "0"},
    {"L", "%", {opt}},
  } -- a example
  
  cute.keymap.normal(N_maps)
Similarly, if you have a key for the insertion period, use`cute.keymap.insert()`

Configure the nvim:

  local cute = require("cute")

  local configure = {
    number = true,
  }

  cute.nvimSets(configure)

# Disclaimer

If you don't think this repository is useful, you can close this page. Don't use bad words.
