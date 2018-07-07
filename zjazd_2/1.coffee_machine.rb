class CoffeeMachine
  def grind_grains
    puts "Grinding grains"
  end

  def add_milk
    puts "Adding milk"
  end

  def make_coffee
    grind_grains
    puts "Making coffee"
    add_milk
  end
end

coffee_machine = CoffeeMachine.new
coffee_machine.make_coffee
