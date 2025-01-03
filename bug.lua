local function foo(t)
  for k, v in pairs(t) do
    if type(v) == "table" then
      foo(v)
    end
  end
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t)

--This code will correctly traverse the nested table.
--However, if t is changed during the traversal,
--this can lead to unexpected behavior or errors.
--For example:

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t)
t.b.d = nil
--Accessing t.b.d after this line will cause an error because the table has been modified during traversal. 