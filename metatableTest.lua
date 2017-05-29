--
-- Created by IntelliJ IDEA.
-- User: xym
-- Date: 2017/5/29
-- Time: 17:23
-- To change this template use File | Settings | File Templates.
--
--元表（类似于java中的子类父类的重载关系）

--元表的__index方法
mytable = setmetatable({ key1 = "value1" }, {
    __index = function(mytable, key)
        if key == "key2" then
            return "metatable"
        else
            return mytable[key]
        end
    end
})

print(mytable.key1, mytable.key2)

--简化
mytable = setmetatable({ key1 = "value1" }, { __index = { key2 = "metatable" } })

print(mytable.key1, mytable.key2)

--元表的__newindex方法
mymetatable = {}

mytable = setmetatable({ key1 = "value1" }, { __newindex = mymetatable })

print(mytable.key1)
mytable.newkey="new value 2"
print(mytable.newkey , mymetatable.newkey)
mytable.key1="new value 1"
print(mytable.key1 , mymetatable.key1)





















