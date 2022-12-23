local M = {
  map = {},
  nvimset = {},
  plugin = {},
}

M.map = require("source.map")
M.nvimset = require("source.nvimset")
M.plugin = require("source.plugin")

return M
