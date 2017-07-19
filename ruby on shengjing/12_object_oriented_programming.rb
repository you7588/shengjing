
color_string = String.new
color_string = "" # 等同

color_array = Array.new
color_array = [] # 等同

color_hash = Hash.new
color_hash = {} # 等同

time  = Time.new # 內建的時間類別
puts time

# 自定類別：

class Person # 大寫開頭的常數
  def initialize(name) # 建構式
    @name = name # 物件變數
  end

  def say(word)
    puts "#{word}, #{@name}" # 字串相加
  end

end

p1 = Person.new("ihower")
p2 = Person.new("ihover")

p1.say("Hello") # 輸出 Hello, ihower
p2.say("Hello") # 輸出 Hello, ihover
# 注意到雙引號裡的字串可以使用#{var}來做字串嵌入，相較起用加號+相加字串可以更有效率。 除了物件方法與物件變數，Ruby也有屬於類別的方法和變數：

class Person
  @@name = "ihower" # 類別變數
  def self.say # 類別方法
    puts @@name
  end
end
Person.say # 輸出 ihower


# 資料封裝
# 所有的物件變數(@開頭)、類別變數(@@開頭)，都是封裝在類別內部的，類別外無法存取：

# class Person
#   def initialize(name)
#     @name = name
#   end
# end
#
# p = Person.new('ihower')
# p.name                      # 出現 NoMethodError 錯誤
# p.name = 'peny'             # 出現 NoMethodError 錯誤

# 為了可以存取到@name，我們必須定義方法：
class Person

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def name=(name)
    @name = name
  end
end

p = Person.new('ihower')      #<Person:0x007fe9e408b8f0 @name="ihower">
p.name                        #"ihower"
p.name="peny"                 # "peny"
p.name                        # "peny"
p                             #<Person:0x007fe9e408b8f0 @name="peny">


# 類別Class定義範圍內也可以執行程式
# 跟其他程式語言不太一樣，Ruby的類別層級內也可以執行程式，例如以下：

class Demo
  puts "foobar"
end
# 當你載入這個類別的時候，就會執行puts "foobar"輸出foobar。會放在這裡的程式，主要的用途是來做Meta-programming。例如，上述定義物件變數的存取方法實在太常見了，因此Ruby提供了attr_accessor、attr_writer、attr_reader類別方法可以直接定義這些方法。上述的程式可以改寫成：

class Person
  attr_accessor :name
end

p = Person.new('ihower')             #<Person:0x007fe9e3094410 @name="ihower">
p.name                               # "ihower"
p.name="peny"                        # "peny"
p.name                               #"peny"
p                                    #<Person:0x007fe9e3094410 @name="peny">


# 這裡的attr_accessor其實就是一個類別方法。




# 方法封裝
# 類別中的方法預設是public的，宣告private或protected的話，該行以下的方法就會套用：
class MyClass

  def public_method
  end

  private

  def private_method_1
  end

  def private_method_2
  end

  protected

  def protected_method
  end

end

# Ruby使用小於<符號代表類別繼承：

class Pet
  attr_accessor :name, :age

  def say(word)
    puts "Say: #{word}"
  end
end

class Cat < Pet
  def say(word)
    puts "Meow~"
    super
  end
end

class Dog < Pet
  def say(word, person)
    puts "Bark at #{person}!"
    super(word)
  end
end

Cat.new.say("Hi")
Dog.new.say("Hi", "ihower")


# Meow~
# Say: Hi
# Bark at ihower!
# Say: Hi
# 這個範例中，Cat和Dog子類別覆寫了Pet say方法，其中的super是用來呼叫被覆寫掉的Pet say方法。另外，沒有括號的super和有括號的super()是有差異的，前者Ruby會自動將所有參數都代進去來呼叫父類別的方法，後者則是自己指定參數。此例中如果Dog say裡只寫super，則會發生wrong number of arguments的錯誤，這是因為Ruby會傳say("Hi", "ihower")給Pet say而發生錯誤。


module MyUtil
  def self.foobar
    puts "foobar"
  end

end

MyUtil.foobar
# 輸出 foobar

# 另一個更重要的功能是Mixins，可以將一個Module混入類別之中，這樣這個類別就會擁有此Module的方法。
# 這回讓我們拆成兩個檔案，debug.rb和foobar.rb，然後在foobar.rb中用require來引用debug.rb：


















#
