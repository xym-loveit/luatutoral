--
-- Created by IntelliJ IDEA.
-- User: xym
-- Date: 2017/5/29
-- Time: 14:24
-- To change this template use File | Settings | File Templates.
--
a = [[安装idea的开发plugin lua，安装luaforwindows，配置skd即可]]
print "Hello World!"
print(a)
io.write("hello world, from ", _VERSION, "!\n")

--[[注解不被解释--]]
--变量声明

local d, f = 5, 10
local a, b
a = 10
b = 20
print("value of a:", a)
print("value of b:", b)
--交换变量值
a, b = b, a
print("value of a:", a)
print("value of b:", b)
f = 70.0 / 3.0
print("value of f:", f)

--变量类型
print(type("str"))
t = 10
print(type(5.8 * t))
print(type(true))
print(type(print))
print(type(type))
print(type(nil))
print(type(type(ABC)))

A = 10
B = 20
print(A + B)
print(A - B)
print(A * B)
print(A % B)
print(A ^ 2)
print(-A)

A, B = 1, nil
if A and B then
    print("and true")
end
if A or B then
    print("or true")
end

print(#"aaaaa")

--循环
a = 10
while (a < 20)
do
    print("value of a:", a)
    a = a + 1
end

for i = 10, 1, -1 do
    print(i)
end

local a = 10
repeat
    print("value of a:", a)
    a = a + 1
until (a > 15)


--break
a = 10
while (a < 20)
do
    print("value of a:", a)
    a = a + 1
    if (a > 15) then
        break
    end
end


--function
function max(num1, num2)
    if (num1 > num2) then
        result = num1
    else
        result = num2
    end
    return result
end

print(max(5, 12))

myprint = function(param)
    print("this is print function --", param)
end

function add(num1, num2, mp)
    result = num2 + num1
    mp(result)
end

myprint(10)
add(2, 57, myprint)

--变参
function average(...)
    result = 0
    local arg = { ... }
    for k, v in ipairs(arg) do
        result = result + v
    end
    print("result=" .. result)
    return result / #arg
end

print("the average is ", average(12, 56, 2, 5))


--字符串
print(string.gsub("my name is zhang13", "13", "yishan"))
print(string.reverse("test"))
print(string.rep("nihao", 3))


--数组
array = { "a", "b" }
for i = 0, 2 do
    print(array[i])
end

--迭代器
function square(iterMaxCount, currentNum)
    if currentNum < iterMaxCount then
        currentNum = currentNum + 1
        return currentNum, currentNum * currentNum
    end
end


for i, n in square, 3, 0 do
    print(i, n)
end

function squares(iterMaxcount)
    return square, iterMaxcount, 0
end

for i, n in squares(3) do
    print(i, n)
end

--空表
mytable = {}
print(type(mytable))

mytable[1] = "a"
mytable["row"] = "row"
alternatetable = mytable
alternatetable['row'] = "I changed it"
myprint(mytable["row"])

--只是变量被释放
alternatetable = nil

print("mytable row :" .. mytable["row"])

print('999=' .. table.concat(mytable))
fruits = { "banana", "orange", "apple" }

print(table.concat(fruits, "$"))
--基于索引连接
print(table.concat(fruits, "##", 2, 3))
--在fruits末尾插入水果
table.insert(fruits, "mango")
print(table.concat(fruits, "%%"))
table.insert(fruits, 2, "grapes")
myprint(table.concat(fruits, "%%"))
print("table maxindex:" .. table.maxn(fruits))
table.remove(fruits, 2)
print(table.concat(fruits, "%%"))

--表排序
fruits = { "banana", "orange", "apple", "grapes" }
for k, v in ipairs(fruits) do
    print(k, v)
end

table.sort(fruits)
print("sorted table")
for k, v in ipairs(fruits) do
    print(k, v)
end









