# 迴圈走訪與迭代器Iterator
#
# 不同於while迴圈用法，Ruby習慣使用迭代器(Iterator)來走訪迴圈，例如each是一個陣列的方法，它會走訪其中的元素，其中的do ... end是each方法的參數，稱作匿名方法(code block)。範例程式如下：

languages = ['Ruby', 'Javascript', 'Perl']
languages.each do |lang|
  puts "I love #{lang}!"
end
# I Love Ruby!
# I Love Javascript!
# I Love Perl!

# 其中兩個直線|中間的lang被稱作Block variable區塊變數，每次迭代都會被設定成不同元素。其他迭代器範例如：

# 反覆三次
3.times do
  puts 'Good Job!'
end
# Good Job!
# Good Job!
# Good Job!

# 從一數到九
1.upto(9) do |x|
  puts x
end

# 多一個索引區塊變數
languages = ['Ruby', 'Javascript', 'Perl']
languages.each_with_index do |lang, i|
    puts "#{i}, I love #{lang}!"
end
# 0, I Love Ruby!
# 1, I Love Javascript!
# 2, I Love Perl!
# (Code block)的形式除了do ... end，也可以改用大括號。通常單行會會用大括號，多行會用do ... end的形式。

3.times { puts "Hello" }



# 其他迭代方式範例
# 迭代並造出另一個陣列
a = ["a", "b", "c", "d"]
b = a.map {|x| x + "!" }
puts b.inspect

# 結果是 ["a!", "b!", "c!", "d!"]

# 找出符合條件的值
b = [1, 2, 3].find_all{ |x| x % 2 == 0 }
puts b.inspect
# 結果是 [2]

# 迭代並根據條件刪除
a = [51, 101, 256]
a.delete_if {|x| x >= 100 }
# 結果是 [51]

# 客製化排序
[2, 1, 3].sort! { |a, b| b <=> a }
# 結果是 [3, 2, 1]

# 計算總和
(5..10).inject {|sum, n| sum + n }
# 結果是 45

# 找出最長字串find the longest word
longest = ["cat", "sheep", "bear"].inject do |memo, word|
  ( memo.length > word.length ) ? memo : word
end
# 結果是 "sheep”











#
