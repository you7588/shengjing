#类和实例的关系
#生成新的对象
ary =Array.new
p ary

#测试某个对象属于哪个类
ary = []
str = "Hello world"
p ary.class
p str.class

#测试某个对象是否属于某个类
ary = []
str = "Hello world."
p ary.instance_of?(Array)
p str.instance_of?(String)
p ary.instance_of?(String)
p str.instance_of?(Array)

#累的继承关系
str = "This is a String."
p str.is_a?(String)
p str.is_a?(Object)
