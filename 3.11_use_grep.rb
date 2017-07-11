# #引用其他的文件3.10
# require "./3.10_grep"                    #读取3.10_grep.rb（省略".rb"）
#
# pattern = Regexp.new(ARGV[0])
# filename = ARGV[1]
# simple_grep(pattern, filename)      #调用 simple_grep 方法

#时间库的引用
require "date"

days = Date.today - Date.new(1992, 2, 3)
puts(days.to_i)                              #7396?!!!==>8903
