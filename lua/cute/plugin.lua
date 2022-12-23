local M = {}

M.set = function(name, config, fun)
  local module = require(name)
  module[fun](config)
  return module
end

M.setup = function(name, config)
  local module = require(name)
  module.setup(config)
  return module
end

return M
