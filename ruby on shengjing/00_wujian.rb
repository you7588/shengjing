# 輸出「UPPER」
puts "upper".upcase

# 輸出 -5 的絕對值
puts -5.abs

# 輸出 Fixnum 類別
puts 99.class

# 輸出五次「Ruby Rocks!」
5.times do
  puts "Ruby Rocks!"
end


# 區域變數Local Variable
# 區域變數使用小寫開頭，偏好單字之間以底線_來分隔。範例如下：

composer = 'Mozart'
puts composer + ' was "da bomb", in his day.'

my_composer = 'Beethoven'
puts 'But I prefer ' + my_composer + ', personally.'
# 如果存取一個尚未初始過的區域變數，會得到以下錯誤：
#
# NameError: undefined local variable or method `qwer' for main:Object
# from (irb):1
# from /Users/ihower/.rvm/rubies/ruby-2.1.3/bin/irb:11:in `<main>'


# 型別轉換Conversions
# 剛剛提到數字和字串物件不能直接相加，你必須使用to_s(轉成字串)、to_i(轉成整數)或to_f(轉成浮點數)來手動轉型，範例如下：
var1 = 2
var2 = '5'

puts var1.to_s + var2 # 25
puts var1 + var2.to_i # 7
puts 9.to_f / 2 # 4.5


# 常數Constant
# 大寫開頭的是為常數，範例如下：

# Foo = 1
# Foo = 2 # (irb):3: warning: already initialized constant Foo

# RUBY_PLATFORM # => "x86_64-darwin10.7.0"
# ENV # => { "PATH" => "....", "LC_ALL" => "zh_TW.UTF-8" }

#
# 空值nil
# 表示未設定值、未定義的狀態：

# nil # nil
# nil.class # NilClass
#
# nil.nil? # true
# 42.nil? # false
#
# nil == nil # true
# false == nil # false

#
# 註解
# Ruby偏好一律使用單行註解：

# this is a comment line
# this is a comment line


# 多行註解比較少見：
=begin
    This is a comment line
    This is a comment line
=end
