

#检查文件是否存在
# p FileTest.exist?("/user/bin/ruby")
#文件大小
# p FileTest.size("/user/bin/ruby")

#圆周率（常量）
p Math::PI
# 2 的平方根
p Math.sqrt(2)



#包含Math模块
include Math
p PI
p sqrt(2)


module MyModule
  # 共同的方法等
end

class MyClass1
  include MyModule
  # MyClass1 中独有的方法
end

class MyClass2
  include MyModule
  # MyClass2 中独有的方法
end
