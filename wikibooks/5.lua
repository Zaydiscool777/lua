local array = {5, "text"; {"inside"; true, "array"}, ",~;"}
-- arrays usually use , and dicts usually use ;
print(#array)

local dict = {
	"hello";
	2;
	thing = 1;
	["item"] = false;
	[3] = 4;
	hello = function(x) print("hello, " .. x) end;
	array = array;
}
dict[4] = "done"

print(dict.item, dict["thing"]) -- "item" follows identifier rules
dict.hello("me")

print(1, array[1]) -- remember that arrays start with 1!!!

for index, value in next, array do
	print(index, value)
end
print("")
for index, value in pairs(dict) do -- basically same as last one
	print(index, value)
end
print("")
for index, value in ipairs(dict) do -- iterates through integers
	print(index, value)
end
print("")

local function a_tuple()
	return 3, 4 -- tuples are not arrays/dicts!
end
print(({a_tuple()})[1])
local a, b = a_tuple()
print(a, b)
print(a_tuple()) -- ... is a tuple
a, b = table.unpack(array)
print(a, b)

local obj = {}
function obj:func(a, b) -- equals object:func(a, b)
	print(self, a, b)
end -- ???
obj.func(obj, 1, 2)
obj:func(1, 2) -- object is passed into first arg of func

local c = {4, 2, 1, 3}
table.sort(c)
print(table.unpack(c))

local associative_array = {
	defined_field = "this field is defined"
}
setmetatable(associative_array, {
	__index = function(self, index)
		return math.random(10)
	end
})
print(associative_array["hello"], associative_array["hello"])
-- for not invoking metamethods (__index), one can use:
	-- rawget, rawset, rawequal, and rawlen

--[[ generic for loop: for <matches> in <explist> do...end
	<matches> contains at least one variable name, ctrl
	<explist> is evaluated to: f, s, var(, cls)
	f is iterator function, s is state,
	var is initial value for ctrl
	for each iteration, <matches> is assigned to f(s, ctrl)
	if ctrl in <matches> is nil, for loop ends
	cls is a closing value, so it is far too advanced for us right now
]]

-- tuples + first class functions = iterator factories
local function count(limit)
	local function seq(state, value)
		if (value >= limit) then
			return nil
		else
			local new_value = value + 1
			return new_value
		end
	end
	return seq, nil, 0
end

for value in count(10) do
	print(value)
end -- printing count(10) is just a tuple
