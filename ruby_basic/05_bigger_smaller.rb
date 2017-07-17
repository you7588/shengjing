#条件:true / false
p (2 == 2)
p (1 == 2)
p (3 > 1)
p (3 > 3)
p (3 >= 3)
p (3 < 1)
p (3 < 3)
p (3 <= 3)

p ("Ruby" == "Ruby")
p ("Ruby" == "Rubens")

p ("Ruby" != "Rubens")
p (1 != 1)

#条件判断:if ~ (then) ~ end/ if ~ else ~ end
a = 20
if a >= 10 then
  print "bigger\n"
end
if a <= 9
  print "smaller\n"
end

if a >= 10
  print "bigger\n"
else
  print "smaller\n"
end

#循环: while ~ (do) ~ end / .times do ~ end
i = 1
while i<=10
  print i, "\n"
  i = i + 1
end

100.times do
  print "All work and no play makes Jack a dull boy.\n"
end

#数组array
name = ["小林", "林", "高野", "森冈"]
name[0]
print "第一个名字为：", name[0], "。\n"
