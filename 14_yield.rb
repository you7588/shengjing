# 定義方法
def call_block
  puts "Start"
  yield
  yield
  puts "End"
end

call_block { puts "Blocks are cool!" }
# 輸出
# "Start"
# "Blocks are cool!"
# "Blocks are cool!"
# "End"
# 帶有參數的Code block

def call_block
  yield(1)
  yield(2)
  yield(3)
end

call_block { |i|
  puts "#{i}: Blocks are cool!"
}
# 輸出
# "1: Blocks are cool!"
# "2: Blocks are cool!"
# "3: Blocks are cool!"
# Proc object

# 可以將Code block明確轉成一個變數：

def call_block(&block)
  block.call(1)
  block.call(2)
  block.call(3)
end


call_block { |i| puts "#{i}: Blocks are cool!" }

# 輸出
# "1: Blocks are cool!"
# "2: Blocks are cool!"
# "3: Blocks are cool!"

# 或是先宣告出 proc object
proc_1 = Proc.new { |i| puts "#{i}: Blocks are cool!" }
proc_2 = lambda { |i| puts "#{i}: Blocks are cool!" }

call_block(&proc_1)
call_block(&proc_2)

# 分別輸出
# "1: Blocks are cool!"
# "2: Blocks are cool!"
# "3: Blocks are cool!"


# 傳遞不定參數

def my_sum(*val)
  val.inject { |sum, v| sum + v }
end

puts my_sum(1, 2, 3, 4) # val 變數就是 [1, 2, 3, 4]
# 輸出 10


# 其中my_sum方法中的val是一個包含所有參數的陣列。
# 參數尾巴的Hash可以省略{ }

def my_print(a, b, options)
  puts a
  puts b
  puts options[:x]
  puts options[:y]
  puts options[:z]
end

my_print("A", "B", { :x => 123, :z => 456 } )
my_print("A", "B", :x => 123, :z => 456) # 結果相同
# 輸出 A
# 輸出 B
# 輸出 123
# 輸出 nil
# 輸出 456


# 例外處理
# 使用rescue可以將例外救回來：

begin
  puts 10 / 0 # 這會丟出 ZeroDivisionError 的例外錯誤
rescue => e
  puts e.class # 如果發生例外會執行 rescue 這一段
ensure
  # 無論有沒有發生例外，ensure 這一段都一定會執行
end
# 輸出 ZeroDivisionError


# 使用raise可以手動觸發例外錯誤：

# raise "Not works!!"
# 丟出一個 RuntimeError

# 自行自定例外物件
class MyException < RuntimeError
end

# raise MyException
#
# Metaprogramming用程式寫程式
#
# Metaprogramming是很進階的技巧，這裡示範define_method方法可以動態定義方法：

class Dragon
  define_method(:foo) { puts "bar" }

  ['a', 'b', 'c', 'd', 'e', 'f'].each do |x|
    define_method(x) { puts x }
  end
end

dragon = Dragon.new
dragon.foo # 輸出 bar
dragon.a # 輸出 a
dragon.f # 輸出


# Introspection反射機制
