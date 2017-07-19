#case语句
array = [ "a", 1, nil ]
array.each do |item|
  case item
  when String
    puts "item is a String."
  when Numeric
    puts "item is a Numeric."
  else
    puts "item is something."
  end
end

#=== 与 case 语句

p (/zz/ === "xyzzy")
p (String === "xyzzy")
p ((1..3) === 2)

#对象的同一性
#ID
ary1 = []
ary2 = []
p ary1.object_id
p ary2.object_id

#判断ID是否相同
str1 = "foo"
str2 = str1
str3 = "f" + "o" + "0"
p str1.equal?(str2)
p str1.equal?(str3)

#判断值是否相同
str1 = "foo"
str2 = "f" + "o" + "o"
p str1 == str2

#判断值是否相同？
p 1.0 == 1
p 1.0.eql?(1)


hash = { 0 => "0"}
p hash[0.0]
p hash[0]
