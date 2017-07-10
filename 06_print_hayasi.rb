names = ["我", "是", "小林", "和", "小红", "的", "朋友"]

names.each do |name|
  if /我/ =~name
    puts name
  end
end
