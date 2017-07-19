#方法的定义
def hello(name="Ruby")
  puts "Hello, #{name}"
end

hello()
hello("Newbie")

# 方法的返回值
def volume(x, y, z)
  return x * y * z
end
p volume(2, 3, 4)
p volume(10, 20, 30)


def area(x, y, z)
  xy = x * y
  yz = y * z
  xz = x * z
  (xy + yz + xz) * 2
end
p area(2, 3, 4)
p area(10, 20, 30)

def max(a, b)
  if a > b
    a
  else
    b
  end
end
p max(10, 5)


def max(a, b)
  if a > b
    return a
  end
  return b
end
p max(10, 5)


p print("1:")
