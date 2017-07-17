#多重赋值
a = 1
b = 2
c = 3

a, b, c = 1, 2, 3

#左>右
a, b, c, d = 1, 2
p [a, b, c]

#左<右
a, b, c = 1, 2, 3, 4
p [a, b, c]

#数组赋值
a, b, *c = 1, 2, 3, 4, 5
p [a, b, c]

a, *b, c = 1, 2, 3, 4, 5
p [a, b, c]


#置换变量的值
a, b = 0, 1
tmp = a
a = b
b = tmp
p [a, b]

a, b = 0, 1
a, b = b, a
p [a, b]

#获取数组的元素
ary = [1, 2]
a, b = ary
p a
p b

#尽量少这么写
ary = [1,2]
a, = ary
p a

#获取嵌套数组的元素
ary = [1, [2,3], 4]
a, b, c = ary
p a
p b
p c

ary = [1, [2, 3], 4]
a, (b1, b2), c =ary
p a
p b1
p b2
p c 
