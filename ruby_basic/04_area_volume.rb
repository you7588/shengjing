#数值的表示
1
100
3.1415

puts (10)

#变量
alphabet = "abcdefg"
num = 10
age = 18
name = 'TAKAHASHT'

x = 10
y = 20
z = 30
area = (x*y + y*z + z+x) * 2
volume = x * y * z
print "1表面积=", area, "\n"
print "1体积=", volume, "\n"

print "2表面积=", (10*20 + 20*30 + 30*10) * 2, "\n"  #???!!!!!答案和上面不一样
print "2体积=", 10*20*30, "\n"

#变量引用的对象
print "3表面积 = #{area}\n"
puts "3表面积 = #{area}"
