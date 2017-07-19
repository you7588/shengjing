# 使用def開頭end結尾來定義一個方法：

def say_hello(name)
  result = "Hi, " + name
  return result
end

puts say_hello('ihower')

# # 輸出 Hi, ihower
# 方法中的return是可以省略的，Ruby就會回傳最後一行運算的值。上述方法可以改寫成：
# def say_hello(name)
#   "Hi, " + name
# end
# 呼叫方法時，括號也是可以省略的，例如：
# say_hello 'ihower'

# 不過，除了一些方法慣例不加之外(例如puts和Rails中的redirect_to、render方法)，絕大部分的情況加上括號比較無疑義。
# 我們也可以給參數預設值：

def say_hello(name = "nobody")
  result = "Hi, " + name
  return result
end

puts say_hello
# 輸出 Hi, nobody


# ?與!的慣例
# 方法名稱可以用?或!結尾，前者表示會回傳Boolean值，後者暗示會有某種副作用(side-effect)。範例如下：

array=[2,1,3]

array.empty? # false
array.sort # [1,2,3]

array.inspect # [2,1,3]

array.sort! # [1,2,3]
array.inspect # [1,2,3]
