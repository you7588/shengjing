#特殊的for语句
sum = 0
for i in 1..5
  sum = sum + i
end
puts sum


#从变量from到变量to

from = 10
to = 20
sum = 0
(to - from + 1).times do |i|
  sum = sum + (i + from)
end
puts sum

from = 10
to = 20
sum = 0
for i in from..to
  sum = sum + i
end
puts sum
