#从文件中逐行读取内容并输出
filename = ARGV[0]
file = File.open(filename)
file.each_line do |line|
  print line
end
file.close
