# 使用中括號，索引從0開始。注意到陣列中的元素是不限同一類別，想放什麼都可以：

a = [ 1, "cat", 3.14 ]

puts a[0] # 輸出 1
puts a.size # 輸出 3

a[2] = nil
puts a.inspect # 輸出 [1, "cat", nil]
a[99] # nil


# inspect方法會將物件轉成適合給人看的字串 如果讀取一個沒有設定的陣列元素，預設值是nil。更多陣列方法範例：
colors = ["red", "blue"]
colors.push("black")
colors << "white"
puts colors.join(", ") # red, blue, black, white

colors.pop
puts colors.last #black


# 使用each方法走訪陣列：
languages = ['Ruby', 'Javascript', 'Perl']
languages.each do |lang|
  puts 'I love ' + lang + '!'
end

# I Love Ruby
# I Love Javascript
# I Love Perl
