class HelloWorld
  def initialize(myname = "Ruby")
    @name = myname
  end

  def name
    @name
  end

  def name=(value)
    @name = value
  end
end

bob = HelloWorld.new"Bob"

p bob.name
bob.name = "Robert"
