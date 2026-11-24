local a = 3
local b, c, d = 4, "hello" -- d is assigned to nil
print(_, __, _Hello, HELLO)

do
	local b = 5
	c = "ok"
end
print(b, c)
a, b = b, a
-- math operators are = ~= > < >= <=

d = 0
while d < 10 do
	d = d + 1
end
d = 1
repeat
	d = d + 1
until true
print("now it is " .. d)
for d = 1, 11, 2 do
	print(d)
	if d > 7 then
		break -- continue doesn't exist
	end
end
