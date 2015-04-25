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
Student.create!(id:     1, fname: 'Rick', lname: 'Grimes')
Student.create!(id:     2, fname: 'Mary', lname: 'Hoppin')
Student.create!(id:     3, fname: 'Kevin',lname: 'Edward')
Student.create!(id:     4, fname: 'Gary', lname: 'Wood')
Student.create!(id:     5, fname: 'Roy',  lname: 'Bailey')
Student.create!(id:     6, fname: 'Lily', lname: 'Robin')
Student.create!(id:     7, fname: 'Nyna', lname: 'Park')
Student.create!(id:     8, fname: 'Lauren', lname: 'Clare')
Student.create!(id:     9, fname: 'Carl', lname: 'Stallone')
Student.create!(id:     10, fname: 'Clark', lname: 'Kent')
Student.create!(id:     11, fname: 'lucifer', lname: 'Satan')
Student.create!(id:     12, fname: 'Giovanni', lname: 'Luna')
Student.create!(id:     13, fname: 'Kun', lname: 'Kim')
Student.create!(id:     14, fname: 'Grigory', lname: 'Kashkin')
Student.create!(id:     15, fname: 'Zhiguang', lname: 'Xu')
Student.create!(id:     16, fname: 'Dave', lname: 'Gibson')
Student.create!(id:     17, fname: 'Shet', lname: 'hitfan')
Student.create!(id:     18, fname: 'Roger', lname: 'Willis')
Student.create!(id:     19, fname: 'Susan', lname: 'Grim')
Student.create!(id:     20, fname: 'Lois', lname: 'Lane')
Student.create!(id:     21, fname: 'Jim', lname: 'Lee')
Student.create!(id:     22, fname: 'Jack', lname: 'Ryan')
Student.create!(id:     23, fname: 'Alexander', lname: 'Allen')
Student.create!(id:     24, fname: 'Alan', lname: 'Purvis')
Student.create!(id:     25, fname: 'Gary', lname: 'Pollock')
Student.create!(id:     26, fname: 'James', lname: 'Keen')
Student.create!(id:     27, fname: 'Juan', lname: 'Guerrero')
Student.create!(id:     28, fname: 'Muhammed', lname: 'Aquzi')
Student.create!(id:     29, fname: 'Xio', lname: 'Kim')
Student.create!(id:     30, fname: 'Ben', lname: 'Dover')
Student.create!(id:     31, fname: 'Dixie', lname: 'Normous')
Student.create!(id:     32, fname: 'Jack', lname: 'Goff')
Student.create!(id:     33, fname: 'Justin', lname: 'Sider')
Student.create!(id:     34, fname: 'Thomas', lname: 'Fister')
Student.create!(id:     35, fname: 'Justin', lname: 'Collins')
Student.create!(id:     36, fname: 'Sarah', lname: 'Smith')
Student.create!(id:     37, fname: 'Ron', lname: 'Jeremy')
Student.create!(id:     38, fname: 'Christopher', lname: 'Holmes')
Student.create!(id:     39, fname: 'Jesus', lname: 'Alvarez')
Student.create!(id:     40, fname: 'Jose', lname: 'Portillo')
Student.create!(id:     41, fname: 'Amir', lname: 'Jarjuri')
Student.create!(id:     42, fname: 'Natalia', lname: 'Clifton')
Student.create!(id:     43, fname: 'Donald', lname: 'Hatcher')
Student.create!(id:     44, fname: 'Vanessa', lname: 'Clinton')
Student.create!(id:     45, fname: 'Christina', lname: 'Fishbeck')
Student.create!(id:     46, fname: 'Luis', lname: 'Mantilla')
Student.create!(id:     47, fname: 'Ruben', lname: 'Rivera')
Student.create!(id:     48, fname: 'Alana', lname: 'Meral')
Student.create!(id:     49, fname: 'Kristina', lname: 'Ricci')
Student.create!(id:     50, fname: 'Joaquin', lname: 'Grande')
Student.create!(id:     51, fname: 'Oscar', lname: 'Rhymes')
