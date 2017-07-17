module M
  def meth
    "meth"
  end
end

class C
  include M
end

c = C.new
p c.meth


C.include?(M)

p C.ancestors
p C.superclass

#extend方法
module Edition
  def edition(n)
    "#{self} 第#{n}版"
  end
end

str = "Ruby基础教程"
str.extend(Edition)

p str.edition(4)

#类与Mix-in
module ClassMethods
  def cmethod
    "class method"
  end
end

module InstanceMethods
  def imethod
    "instance method"
  end
end

class MyClass
  #使用extend方法定义类方法
  extend ClassMethods
  #使用include定义实例方法
  include InstanceMethods
end

p MyClass.cmethod
p MyClass.new.imethod
