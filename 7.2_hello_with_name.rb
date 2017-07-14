#实例方法
p "10, 20, 30, 40".split(",")
p [1, 2, 3, 4,].index(2)
p 1000.to_s

#数值对象与时间对象的区别
p 10.to_s
p Time.now.to_s

# #类方法
# Array.new                        #创建新的数组
# File.open("6.1_times.rb")        #创建新的文件对象
# Time.now                         #创建新的Time对象
#
# File.rename(oldname, newname)    #修改文件名
#
# Array["a", "b", "c"]             #创建["a", "b", "c"]的数组
#
# #函数式方式
# print "hello!"                    #在命令行输出字符串
# sleep(10)                         #在指定的时间内睡眠，终止程序

#方法的定义

def hello(name)
  puts "Hello, #{name}"
end

hello("Ruby")
