# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
Menu.delete_all     
      Menu.create!(menuID: '1',
      foodItem: 'South American platter',
      description: 'Yellow Rice top with black beans, plantains, fresh dark green salad, shredded pork with peppers and cilantro with a whole wheat and oat bun',
      image_url: 'menu1.jpg',
      price: 6.99
      )
 # . . .     
      Menu.create!(menuID: '2',
      foodItem: 'French Cuisine',
      description: 'Crepe with sliced beets, sweet potatoes and split pea and carrot soup, served with wheat bun',
      image_url: 'menu2.jpg',
      price: 6.99)
 # . . .     
    Menu.create!(menuID: '3',
    foodItem: 'Asian Delight',
    description: 'rice topped with tilipia  with egg based soup topped with green onions, broccoli and pepper side, also comes with Kimchi.',
    image_url: 'menu3.jpg',
    price: 6.99)
  # . . .    
    Menu.create!(menuID: '4',
    foodItem: 'Roast beef Dish',
    description: 'Slice of premium roast beef from the French Alps, Exotic mystery cheese and apples, yams, kiwi, and fresh seasoned green peppers',
      image_url: 'menu4.jpg',
      price: 6.99)
  # . . .    
    Menu.create!(menuID: '5',
    foodItem: 'Chicken and Rice',
    description: 'Chicken placed on a bed of rice, with mini tamales, and cucumber and cherry tomatoe salad, yougurt and yellow fruit.',
    image_url: 'menu5.jpg',
    price: 6.99)
  # . . .    
    Menu.create!(menuID: '6',
    foodItem: 'salmonator',
    description: 'salmon on a bed of spinich, cherry tomatoe and mozzorella balsamic vingerette salade and ziti side, with graps for dessert.',
    image_url: 'menu6.jpg',
    price: 6.99)
 # . . .     
   Menu.create!(menuID: '7',
   foodItem: 'shrimp and riceness',
   description: 'shrimp on a bed of rice and tomatoe soup, mixed pepper salad, oat bread and half a slice of orange.',
   image_url: 'menu7.jpg',
   price: 6.99)
   # . . .   
    Menu.create!(menuID: '8',
    foodItem: 'Crepe',
    description: 'naan bread with saurkraut and cranberry dressing with mashed potatoes and 3 sausage links',
    image_url: 'menu8.jpg',
    price: 6.99)
      #...
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
