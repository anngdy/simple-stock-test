# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.create(name: 'Camiseta X')
Product.create(name: 'Camiseta Y')
Product.create(name: 'Camiseta Z')

Color.create(name: 'Black')
Color.create(name: 'Blue')
Color.create(name: 'White')
Color.create(name: 'Gray')
Color.create(name: 'Red')
Color.create(name: 'Pink')
Color.create(name: 'Navy')

Size.create(name: 'PP')
Size.create(name: 'P')
Size.create(name: 'M')
Size.create(name: 'G')
Size.create(name: 'GG')

AvailableProduct.create(product_id:1 , color_id: 1, size_id: 1 , quantity: 335)
AvailableProduct.create(product_id:2 , color_id: 1, size_id: 1, quantity: 893)
AvailableProduct.create(product_id:3 , color_id: 1, size_id: 1, quantity: 120)