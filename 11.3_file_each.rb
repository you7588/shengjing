# file对象


#行
file = File.open("README.md")
file.each_line do |line|
  print line
end
file.close

#字符
file = File.open("README.md")
file.each_char do |char|
  print char
end
file.close

#字节
file = File.open("README.md")
file.each_byte do |byte|
  print byte
end
file.close
