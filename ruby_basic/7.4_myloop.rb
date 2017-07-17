#定义带块的方法
def myloop
  while true
    yield
  end
end

num = 1
myloop do
  puts "num is #{num}"
  break if num > 100
  num *= 2
end

def foo(*args)
  args
end

p foo(1, 2, 3)

def meth(arg, *args)
  [arg, args]
end

p meth(1)
p meth(1, 2, 3)

def a(a, *b, c)
  [a, b, c]
end

p a(1, 2, 3, 4, 5)
p a(1, 2)
