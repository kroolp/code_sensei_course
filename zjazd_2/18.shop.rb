class Product
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def to_s
    "Name: #{@name}, Price: #{@price}"
  end
end

class Shop
  attr_accessor :name, :products

  def initialize(name)
    @name = name
    @products = []
  end

  def add_product(product, quantity=1)
    quantity.times do
      @products.push(product)
    end
  end

  def take(product_name)
    index = @products.index { |product| product.name == product_name }

    @products.delete_at(index) if index
  end
end

class Client
  attr_accessor :list
  attr_reader :money, :name, :bag

  def initialize(name, money)
    @name = name
    @money = money
    @list = []
    @bag = []
  end

  def perform_shopping(shop)
    while product_name = list.pop
      product = shop.take(product_name)
      bag << product
    end

    true
  end

  def to_s
    str = "Name: #{@name}, Money: #{@money}"
    str += "\nList: " + @list.join(',')
    str += "\nBag: " + @bag.map(&:name).join(',')
  end
end

shop = Shop.new('Stonka')
shop.add_product(Product.new('chleb', 1), 10)
shop.add_product(Product.new('jogurt', 1.23), 4)
shop.add_product(Product.new('szynka', 5.99), 8)

janusz = Client.new('Janusz', 30)
janusz.list = ['chleb', 'jogurt', 'jogurt', 'szynka']

puts janusz.perform_shopping(shop)
puts "Janusz"
puts janusz
puts "products"
puts shop.products
