#限制方法的调用
class AccTest
  def pub
    puts "pub is a public method."
  end

  public :pub               #把pub方法设定为public（可省略）

  def priv
    puts "priv is a private method."
  end

  private :priv             #把priv方法设定为private
end

acc = AccTest.new
acc.pub
acc.priv

#另一种表达方式

class AccTest
  public    #不指定参数时，以下的方法都被定义为public

  def pub
    puts "pbu is a public method"
  end

  private #以下的方法都被定义为private

  def priv
    puts "priv is a private method."
  end
end 
