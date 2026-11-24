local M = {} -- shh
function M.add(a, b)
	return a + b
end

-- functions take take one argument don't need parentheses
print "5"
print (not false)
print {1, 2} -- memory address

-- syntactic error: cat dog tree
-- semantic error: i are good

-- see pcall and xpcall...

local function printv(...)
	x = table.pack(...)
	print(x)
	print(table.unpack({...}))
end
printv(1, 2, 3)

return M
