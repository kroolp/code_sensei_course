class User
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def welcome(user)
    puts "Welcome #{user.name}!"
    user.hello(self)
  end

  protected

  def hello(user)
    puts "Hello #{user.name}!"
  end
end

class Cat
  def call_hello
    user = User.new("Ryszard")
    user.hello(self)
  end
end

# user_1 = User.new("Tomek")
# user_2 = User.new("Kasia")
#
# user_1.welcome(user_2)

Cat.new.call_hello
