# 迴圈 while, loop, until, next and break
# while用法範例：

i=0
while ( i < 10 )
  i += 1
  next if i % 2 == 0 #跳過雙數
end

# until用法範例
i = 0
i += 1 until i > 10
puts i
# 輸出 11


# loop用法範例：
i = 0
loop do
  i += 1
  break if i > 10 # 中斷迴圈
end


# 不過你很快就會發現寫Ruby很少用到while、until、loop，我們會使用迭代器。

# 真或假
# 記住，只有false和nil是假，其他都為真。

puts "not execute" if nil
puts "not execute" if false

puts "execute" if true # 輸出 execute
puts "execute" if "" # 輸出 execute (和JavaScript不同)
puts "execute" if 0 # 輸出 execute (和C不同)
puts "execute" if 1 # 輸出 execute
puts "execute" if "foo" # 輸出 execute
puts "execute" if Array.new # 輸出 execute
