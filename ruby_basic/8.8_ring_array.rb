class RingArray < Array
  def [](i)
    idx = i % size
    super(idx)
  end
end

wday = RingArray["日", "月", "火", "水", "木", "金", "土"]
p wday [6]
p wday [22]
p wday [15]
p wday [-1]


#alias yuundef

class C1
  def hello
    "Hello"
  end
end

class C2 < C1
  alias old_hello hello

  def hello
    "#{old_hello}, again"
  end
end

obj = C2.new
p obj.old_hello
p obj.hello


#单例类

str1 = "Ruby"
str2 = "Ruby"

class << str1
  def hello
    "Hello, #{self}!"
  end
end

p str1.hello
p str2.hello
