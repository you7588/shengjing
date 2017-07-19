#关键字参数

def area2(x: 0, y: 0, z:0)
  xy = x * y
  yz = y * z
  zx = z * x
  (xy + yz + zx ) * 2
end

p area2(x: 2, y: 3, z: 4)
p area2(z: 4, y: 3, x: 2)
p area2(x: 2, z: 3)


def meth(x: 0, y: 0, z: 0, **args)
  [x, y, z, args]
end

p meth(z: 4, y: 3, x: 2)
p meth(x: 2, z: 3, v: 3, w: 5)

#用散列传递参数

def area2(x: 0, y: 0, z:)
  xy = x * y
  yz = y * z
  zx = z * x
  (xy + yz + zx ) * 2
end

args1 = {x: 2, y: 3, z: 4}
p area2(args1)

args2 = {x: 2, z: 3}
p area2(args2)

#把数组分解为参数

def foo(a, b, c)
  a + b + c
end

p foo(1, 2, 3)

args1 = [2, 3]
p foo(1, *args1)

args2 = [1, 2, 3]
p foo(*args2)

#把散列做为参数传递
def foo(arg)
  arg
end

p foo({"a"=>1, "b"=>2})
p foo("a"=>1, "b"=>2)
p foo(a: 1, b: 2)

def bar(arg1, arg2)
  [arg1, arg2]
end

p bar(100, {"a"=>1, "b"=>2})
p bar(100, "a"=>1, "b"=>2)
p bar(100, a: 1, b: 2)
#
