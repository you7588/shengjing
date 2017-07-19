#字串string==> 单引号或双引号。
puts 'Hello, world!'
puts ''
puts 'Good-bye.'
#字串相加可以使用加號，要注意的是字串不能直接跟數字相加，會發生例外錯誤：

puts 'I like ' + 'apple pie.'
puts 'You\'re smart!'

# puts '12' + 12
#<TypeError: can't convert Fixnum into String>
#更多字串方法示範：

var1 = 'stop'
var2 = 'foobar'
var3 = "aAbBcC"

puts var1.reverse # pots
puts var2.length # 6
puts var3.upcase # AABBCC
puts var3.downcase # aabbcc
#為了方便字串的組合，Ruby也支持內插的方式：

verb = 'work'
where = 'office'

puts "I #{verb} at the #{where}" # 輸出 I work at the office
#注意到使用雙引號(“)的字串才會進行內插處理。如果換成單引號(‘)：

puts 'I #{verb} at the #{where}' # 輸出 I #{verb} at the #{where}
