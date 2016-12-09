# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.create(name: 'A TShirt')
Product.create(name: 'B TShirt')
Product.create(name: 'C TShirt')
Product.create(name: 'D TShirt')
Product.create(name: 'E TShirt')
Product.create(name: 'F TShirt')
Product.create(name: 'G TShirt')
Product.create(name: 'H TShirt')
Product.create(name: 'I TShirt')
Product.create(name: 'J TShirt')
Product.create(name: 'L TShirt')
Product.create(name: 'M TShirt')
Product.create(name: 'N TShirt')

Color.create(name: 'Black')
Color.create(name: 'Blue')
Color.create(name: 'White')
Color.create(name: 'Gray')
Color.create(name: 'Red')
Color.create(name: 'Pink')
Color.create(name: 'Navy')

Size.create(name: 'XS')
Size.create(name: 'S')
Size.create(name: 'M')
Size.create(name: 'L')
Size.create(name: 'XL')

AvailableProduct.create(product_id:1 , color_id: 1, size_id: 1 , quantity: 335)
AvailableProduct.create(product_id:2 , color_id: 1, size_id: 1, quantity: 893)
AvailableProduct.create(product_id:3 , color_id: 1, size_id: 1, quantity: 120)