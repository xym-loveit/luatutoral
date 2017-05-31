--
-- Created by IntelliJ IDEA.
-- User: xym
-- Date: 2017/5/31
-- Time: 16:25
-- To change this template use File | Settings | File Templates.

--[[num = 1
while num < 20 do
    print(num)
    num = num + 1
end--]]

--[[
function f(x)
    print("fun f")
    return x * 2
end

for i = 1, f(5) do
    print(i)
end
--]]

--[[
days = { "Suanday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday" }
for i, v in ipairs(days) do print(v) end

s, e = string.find('abcdefg@qq.com', 'g@q')
print(s, e);
]]

function maxinum(a)
    local i = 1
    local m = a[i]
    for j = 1, #a do
        if m < a[j] then
            i = j
            m = a[j]
        end
    end
    return i, m
end

nums = { 20, 15, 4, 3, 27, 9 }
print(maxinum(nums))

print(package.path)


mymetatable2 = { key2 = "value22" }
mytable2 = { key1 = "value1" }

setmetatable(mytable2, { __index = mymetatable2 })
print(mytable2.key2)


mytable3 = setmetatable(mytable2, {
    __index = function(tab, key)
        if key == 'keyx' then
            return 'metakey'
        else
            return nil
        end
    end
})


print(mytable3.keyx, mytable3.key1,mytable3.key2)









































