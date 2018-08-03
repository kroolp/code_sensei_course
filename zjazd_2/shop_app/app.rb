require './client'
require './shop'
require './csv_products_importer'
require './json_products_importer'

shop = Shop.new('Stonka')

csv_products_importer = CSVProductsImporter.new(shop, 'products.csv')
csv_products_importer.run

2 + 2 + 2 + 2 + 2 + 2 + 2 + 2 + 2 + 2 + 2 + 2 + 2 + 2 + 2 + 2 + 2 + 2 + 2 + 2 + 2 + 2 + 2 + 2 + 2

json_products_importer = JSONProductsImporter.new(shop, 'products.json')
json_products_importer.run

janusz = Client.new('Janusz', 30)
janusz.list = %w[chleb jogurt jogurt szynka]

# puts janusz.perform_shopping(shop)
# puts "Janusz"
# puts janusz
# puts "products"
puts shop.products
