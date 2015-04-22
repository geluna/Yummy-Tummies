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
Student.create!(id:     1, fname: 'Rick', lname: 'Grimes', school: 'Valdosta Elementary School')
Student.create!(id:     2, fname: 'Mary', lname: 'Hoppin', school: 'Valdosta Elementary School')
Student.create!(id:     3, fname: 'Kevin',lname: 'Edward', school: 'Valdosta Elementary School')
Student.create!(id:     4, fname: 'Gary', lname: 'Wood',   school: 'Albany Elementary School')
Student.create!(id:     5, fname: 'Roy',  lname: 'Bailey', school: 'Albany Elementary School')
Student.create!(id:     6, fname: 'Lily', lname: 'Robin', school: 'Baytree Elementary School')
Student.create!(id:     7, fname: 'Nyna', lname: 'Park',   school: 'Baytree Elementary School')
Student.create!(id:     8, fname: 'Lauren', lname: 'Clare', school: 'Baytree Elementary School')
Student.create!(id:     9, fname: 'Carl', lname: 'Stallone', school: 'Baytree Elementary School')
Student.create!(id:     10, fname: 'Clark', lname: 'Kent', school: 'Baytree Elementary School')
Student.create!(id:     11, fname: 'lucifer', lname: 'Satan', school: 'Baytree Elementary School')
Student.create!(id:     12, fname: 'Giovanni', lname: 'Luna', school: 'Timberlane Elementary School')
Student.create!(id:     13, fname: 'Kun', lname: 'Kim', school: 'Baytree Elementary School')
Student.create!(id:     14, fname: 'Grigory', lname: 'Kashkin', school: 'Baytree Elementary School')
Student.create!(id:     15, fname: 'Zhiguang', lname: 'Xu', school: 'Baytree Elementary School')
Student.create!(id:     16, fname: 'Dave', lname: 'Gibson', school: 'Baytree Elementary School')
Student.create!(id:     17, fname: 'Shet', lname: 'hitfan', school: 'Baytree Elementary School')
Student.create!(id:     18, fname: 'Roger', lname: 'Willis', school: 'Baytree Elementary School')
Student.create!(id:     19, fname: 'Susan', lname: 'Grim', school: 'Valdosta Elementary School')
Student.create!(id:     20, fname: 'Lois', lname: 'Lane', school: 'Valdosta Elementary School')
Student.create!(id:     21, fname: 'Jim', lname: 'Lee', school: 'Valdosta Elementary School')
Student.create!(id:     22, fname: 'Jack', lname: 'Ryan', school: 'Valdosta Elementary School')
Student.create!(id:     23, fname: 'Alexander', lname: 'Allen', school: 'Valdosta Elementary School')
Student.create!(id:     24, fname: 'Alan', lname: 'Purvis', school: 'Valdosta Elementary School')
Student.create!(id:     25, fname: 'Gary', lname: 'Pollock', school: 'Valdosta Elementary School')
Student.create!(id:     26, fname: 'James', lname: 'Keen', school: 'Valdosta Elementary School')
Student.create!(id:     27, fname: 'Juan', lname: 'Guerrero', school: 'Valdosta Elementary School')
Student.create!(id:     28, fname: 'Muhammed', lname: 'Aquzi', school: 'Valdosta Elementary School')
Student.create!(id:     29, fname: 'Xio', lname: 'Kim', school: 'Valdosta Elementary School')
Student.create!(id:     30, fname: 'Ben', lname: 'Dover', school: 'Valdosta Elementary School')
Student.create!(id:     31, fname: 'Dixie', lname: 'Normous',   school: 'Albany Elementary School')
Student.create!(id:     32, fname: 'Jack', lname: 'Goff',   school: 'Albany Elementary School')
Student.create!(id:     33, fname: 'Justin', lname: 'Sider',   school: 'Albany Elementary School')
Student.create!(id:     34, fname: 'Thomas', lname: 'Fister',   school: 'Albany Elementary School')
Student.create!(id:     35, fname: 'Justin', lname: 'Collins',   school: 'Albany Elementary School')
Student.create!(id:     36, fname: 'Sarah', lname: 'Smith',   school: 'Albany Elementary School')
Student.create!(id:     37, fname: 'Ron', lname: 'Jeremy',   school: 'Albany Elementary School')
Student.create!(id:     38, fname: 'Christopher', lname: 'Holmes',   school: 'Albany Elementary School')
Student.create!(id:     39, fname: 'Jesus', lname: 'Alvarez',   school: 'Albany Elementary School')
Student.create!(id:     40, fname: 'Jose', lname: 'Portillo',   school: 'Timberlane Elementary School')
Student.create!(id:     41, fname: 'Amir', lname: 'Jarjuri',   school: 'Timberlane Elementary School')
Student.create!(id:     42, fname: 'Natalia', lname: 'Clifton',   school: 'Timberlane Elementary School')
Student.create!(id:     43, fname: 'Donald', lname: 'Hatcher',   school: 'Timberlane Elementary School')
Student.create!(id:     44, fname: 'Vanessa', lname: 'Clinton',   school: 'Timberlane Elementary School')
Student.create!(id:     45, fname: 'Christina', lname: 'Fishbeck',   school: 'Timberlane Elementary School')
Student.create!(id:     46, fname: 'Luis', lname: 'Mantilla',   school: 'Timberlane Elementary School')
Student.create!(id:     47, fname: 'Ruben', lname: 'Rivera',   school: 'Timberlane Elementary School')
Student.create!(id:     48, fname: 'Alana', lname: 'Meral',   school: 'Timberlane Elementary School')
Student.create!(id:     49, fname: 'Kristina', lname: 'Ricci',   school: 'Timberlane Elementary School')
Student.create!(id:     50, fname: 'Joaquin', lname: 'Grande',   school: 'Timberlane Elementary School')
Student.create!(id:     51, fname: 'Oscar', lname: 'Rhymes',   school: 'Baytree Elementary School')
