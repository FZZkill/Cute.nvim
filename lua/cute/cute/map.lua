local M = { opt = { noremap = true, silent = true } }

M.set_modes = function(lhs, rhs, opts)
  if not opts then
    opts = M.opt
  end
  vim.keymap.set('', lhs, rhs, opts)
end
M.set_normal = function(lhs, rhs, opts)
  if not opts then
    opts = M.opt
  end
  vim.keymap.set('n', lhs, rhs, opts)
end
M.set_insert = function(lhs, rhs, opts)
  if not opts then
    opts = M.opt
  end
  vim.keymap.set('i', lhs, rhs, opts)
end

M.normal = function(maps)
  for _, key in ipairs(maps) do
    M.set_normal(key[1], key[2], key[3])
  end
end
M.insert = function(maps)
  for _, key in ipairs(maps) do
    M.set_insert(key[1], key[2], key[3])
  end
end
M.modes = function(maps)
  for _, key in ipairs(maps) do
    M.set_modes(key[1], key[2], key[3])
  end
end

return M

