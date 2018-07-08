class Animal
  attr_accessor :age, :name, :number_of_legs

  def initialize(age, name, number_of_legs)
    @age = age
    @name = name
    @number_of_legs = number_of_legs
  end

  def to_s
    "Name: #{name}, Age: #{age}, NumberOfLegs: #{number_of_legs}"
  end

  def show
    puts "Name: #{name}, Age: #{age}, NumberOfLegs: #{number_of_legs}"
  end
end

class Cat < Animal
  def initialize(age, name)
    super(age, name, 4)
  end

  def behavior
    puts "I'm lazzy"
  end

  def to_s
    super + "\nI'm a cat xD"
  end

  def show
    puts "I'm a cat xD"
    super
  end
end

class BlackCat < Cat
  def to_s
    super + "\nI'm black"
  end

  def show
    puts "I'm black"
    super
  end
end

class Dog < Animal
  def initialize(age, name)
    super(age * 7, name, 4)
  end

  def making_sound
    puts "woof! woof!"
  end
end

animals = [
  BlackCat.new(12, 'Witek'),
  Cat.new(15, 'Teodor'),
  Animal.new(3, 'Filip', 2),
  Dog.new(12, 'Bobek')
]

animals.each { |animal| puts animal }
