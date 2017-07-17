module HelloModule
  Version = "1.0"

  def hello(name)
    puts "Hello, #{name}."
  end

  module_function :hello
end

p HelloModule::Version
HelloModule.hello("Alice")

include HelloModule
p Version
hello("Alice")


module FooMoudle
  def foo
    p self
  end
  module_function :foo
end

FooMoudle.foo
