#循环
alphabet = ["a", "b", "c", "d", "e"]
alphabet.each do |i|
  puts i.upcase
end

sum = 0
outcome = {"参加费"=>1000, "挂件费用"=>1000, "联欢会费用"=>4000}
outcome.each do |pair|
  sum += pair[1]
end
puts "合计: #{sum}"
