local co = coroutine.create(function(init)
	local get = coroutine.yield(init + 2)
	return get - init
end)
local _, initial_result = coroutine.resume(co, 3)
local final_result, ok, err = coroutine.resume(co, initial_result * 2)
print(final_result)

-- because of the __index metamethod, string.a(b, ...) = b:a(...)
local sentence = "The quick brown fox jumps over the lazy dog."
local start_position, end_position = sentence:find("lazy", 1, true)
print("The word \"lazy\" was found starting at position " ..
start_position .. " and ending at position " .. end_position .. ".")
-- lua expression notation is similar to but lesser than normal regex

local m = require("4")
print("sum", m.add(3, 4))
