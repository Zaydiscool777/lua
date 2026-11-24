-- execute != evaluate
print(type(3 + 5))
print(3, 3.0, 314e-2, 0xff)
local a = 3 -- shh
print(-a, 1 + 2, 1 - 2, 2 * 3, a ^ a, 3 / 2, 5 // 2, -5 % 3)
-- note how % is a proper modulo operator; -5 % 3 returns 1

print(nil, type(nil), b) -- all the same!? (#2 is "nil" not nil)

-- nil and false are the only falsy values
print(not nil, not false, not true, not 3)
-- and and or can also be used for short-circuiting
print(true and 3, false and 3, nil and 3, 3 and true)
print(true or 3, false or 3, nil or 3, 3 or false)
-- false and nil are still different though
print(false and nil, nil and false, false or nil, nil or false)
print(false == nil, nil == false)

print("escapes: \\\"\'\n\t\065 \z	
ok")
print([[this
continues]])
print([=[
	newline is ignored if it follows [[immediately]]
text ends here]=])
print(#'hello')
print("122" + 1, "first" .. "second") -- coercion

-- bitwise
print(5 & 3, 5 | 3, 5 ~ 3, ~3, 3 << 2, 8 >> 2) -- ~ is xor/negate

--[[
operator precedence:

Exponentiation: ^
Unary operators: not, #, -, ~
Level 2 mathematical operators: *, /, //, %
Level 1 mathematical operators: +, -
Concatenation: ..
Bit shifts: <<, >>
Bitwise AND: &
Bitwise XOR: ~
Bitwise OR: |
Relational operators: <, >, <=, >=, ~=, ==
Boolean and: and
Boolean or: or
]]
