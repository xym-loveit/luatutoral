--
-- Created by IntelliJ IDEA.
-- User: xym
-- Date: 2017/5/31
-- Time: 15:58
-- To change this template use File | Settings | File Templates.
--

tab1 = { key1 = "val1", key2 = "val2", "val3" }
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end

tab1.key1 = nil
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end


print(type(true))
print(type(false))
print(type(nil))


html = [[
<html>
<head></head>
<body>
    <a href="http://www.w3cschool.cc/">w3cschool菜鸟教程</a>
</body>
</html>
]]
print(html)

print(#"errefxdfcxccxcvcxvcvbcbvb中国")

a3 = {}
for i = 1, 10 do
    a3[i] = i
end

--匿名函数使用
function anonymous(tab, fun)
    for k, v in pairs(tab) do
        print(fun(k, v))
    end
end

tab = { key1 = "val1", key2 = "val2" }
anonymous(tab, function(k, v)
    return k .. "$$" .. v
end)




































