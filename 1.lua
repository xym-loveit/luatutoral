--
-- Created by IntelliJ IDEA.
-- User: xym
-- Date: 2017/5/31
-- Time: 11:30
-- To change this template use File | Settings | File Templates.
num, sum = 1, 0

while num <= 100 do
    sum = sum + num
    num = num + 1
end
print(sum)

sum = 0
for i = 1, 100 do
    sum = sum + i
end
print(sum)

--奇数和
sum = 0
for i = 1, 100, 2 do
    sum = sum + i
end
print(sum)

--偶数和
sum = 0
for i = 100, 1, -2 do
    sum = sum + i
end
print(sum)

sum = 2
repeat
    sum = sum ^ 2
    print(sum)
until sum > 1000

--斐波那契数列
function fib(n)
    if n < 2 then return 1 end
    --1/2/3/5/8/13
    return fib(n - 2) + fib(n - 1)
end

print(fib(6))


--闭包
function newCounter()
    local i = 0
    return function()
        i = i + 1
        return i
    end
end

c1 = newCounter()
print(c1())
print(c1())


--闭包实现y的x次方
function myPower(x)
    return function(y) return y ^ x end
end

power2 = myPower(2)
power3 = myPower(3)
print(power2(5)) --5的2次方
print(power3(6)) --6的3次方

--可以给多个变量一次性赋值,多出来的值"5"被丢弃
a, b, c, d = 1, 2, 3, 4, 5
print(a, b, c, d)

function getUserInfoById(uid)
    print(uid)
    return "zhangsan", 28, 'xym-loveit.github.io', 'xym_loveit@123.com'
end

--多出来的变量被赋值为nil
e, f, g, h, i = getUserInfoById()
print(e, f, g, h, i);

--foo和foo2两个函数是一样的
function foo(x)
    return x ^ 2
end

foo2 = function()
    return x ^ 2
end

--- -

xym = { name = "xxx", age = 28, handsome = true }

xym.website = "https://xym-loveit.github.io/" --create
local age = xym.age --read
xym.handsome = false --update
xym.name = nil --delete

print("~~~~~~~~~~~~~~~~~~~~~~")
for k, v in pairs(xym) do
    print(k .. "--" .. tostring(v))
end

print("~~~~~~~~~~~~~~~~~~~~~~")

arr = { [1] = 10, [2] = 20, [3] = 30, [4] = 40, [5] = 50 }


for k, v in pairs(arr) do
    print(k .. "--" .. v)
end


arr = { "string", 100, "abc", function() print("power by lua") end }
for i = 1, #arr do
    print(arr[i])
end
--调用数组中的函数
arr[4]()

--定义全局变量
--local xym2 = "123456"
--print(_G["xym2"])
--print(_G.xym2)

















































