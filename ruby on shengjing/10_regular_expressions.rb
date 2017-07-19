# 正規表示法Regular Expressions
#
# 與Perl類似的語法，使用=~：

# 抓出手機號碼
phone = "123-456-7890"
if phone =~ /(\d{3})-(\d{3})-(\d{4})/
  ext  = $1
  city = $2
  num  = $3
end
