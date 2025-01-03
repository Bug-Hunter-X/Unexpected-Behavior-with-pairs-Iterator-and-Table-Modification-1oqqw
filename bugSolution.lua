local function foo(t)
  local keys = {}
  for k, _ in pairs(t) do
    table.insert(keys, k)
  end

  for _, k in ipairs(keys) do
    local v = t[k]
    if type(v) == "table" then
      foo(v)
    end
  end
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t)
t.b.d = nil
--This version will correctly iterate, even if t is changed during traversal because it creates a copy of keys before iteration.