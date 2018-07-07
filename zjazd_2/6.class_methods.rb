class CoffeeMachine
  @@value = 3

  def self.company_name
    "Samsung"
  end

  def self.show
    puts @@value
  end

  def show_value
    self.class.show
  end
end

coffee_machine = CoffeeMachine.new
coffee_machine.show_value
