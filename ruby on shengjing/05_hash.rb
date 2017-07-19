config = { :foo => 123, :bar => 456 }
puts config[:foo] # 輸出 123
config["nothing"] # 是 nil


# 在Ruby 1.9後支援新的語法，比較簡約：
# config = { foo: 123, bar: 456 } # 等同於 { :foo => 123, :bar => 456 }
# 如果讀取一個不存在的值，例如上述範例的nothing，預設值是nil。



# 使用each方法可以走訪雜湊：
config = { :foo => 123, :bar => 456 }
config.each do |key, value|
  puts "#{key} is #{value}"
end

# foo is 123
# bar is 456
