# 控制結構If
# else if寫成elsif：

total = 26000

if total > 100000
  puts "large account"
elsif total > 25000
  puts "medium account"
else
  puts "small account"
end


# 另外如果要執行的if程式只有一行，可以將if放到行末即可：

puts "greater than ten" if total > 10

# 三元運算子
# 三元運算子expression ? true_expresion : false_expression可以讓我們處理簡易的if else條件，例如以下的程式：

x = 3
if x > 3
  y = "foo"
else
  y = "bar"
end


# 改用三元運算子之後，可以縮減程式行數：
x = 3
y = ( x > 3 ) ? "foo" : "bar"
