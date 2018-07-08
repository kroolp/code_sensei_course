class Animal
  attr_accessor :age, :name, :number_of_legs

  def to_s
    "Name: #{name}, Age: #{age}, NumberOfLegs: #{number_of_legs}"
  end

  def show
    puts "Name: #{name}, Age: #{age}, NumberOfLegs: #{number_of_legs}"
  end
end

class Cat < Animal
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
  def making_sound
    puts "woof! woof!"
  end
end

cat = BlackCat.new
cat.age = 12
cat.name = 'Witek'
cat.number_of_legs = 4

cat.show
