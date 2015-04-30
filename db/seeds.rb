# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
User.delete_all
User.create!(id: 100, email: 'admin@admin.com', 
            password: 'adminadmin', 
            address: '401 college st. valdosta, ga',
            password_confirmation: 'adminadmin', 
            admin: true, 
            )
User.create!(id: 101, email: 'an@an.com', 
            password: 'asdasdasd', 
            address: '1000 college st. valdosta, ga',
            password_confirmation: 'asdasdasd', 
            admin: false, 
            )

Menu.delete_all     
      Menu.create!(menuID: '1',
      foodItem: 'South American platter',
      description: 'Our Premium Platter includes-Yellow Rice top with black beans, plantains, fresh dark green salad, shredded pork with peppers and cilantro with a whole wheat and oat bun',
      ingredients: ' olive oil, onion, garlic, cayenne pepper, cummin, salt, pepper, low sodium-low fat vegatable broth',
      image_url: 'menu1.jpg',
      price: 11.99, franchise_id: 1
      )
 # . . .     
      Menu.create!(menuID: '2',
      foodItem: 'French Cuisine',
      description: 'Our Premium Platter includes-Crepe with sliced beets, sweet potatoes and split pea and carrot soup, served with wheat bun',
      ingredients: 'fructose, salt, pepper, low fat butter, all purpose flour, eggs, milk',
      image_url: 'menu2.jpg',
      price: 10.99, franchise_id: 1)
 # . . .     
    Menu.create!(menuID: '3',
    foodItem: 'Asian Delight',
    description: 'Our Premium Platter includes- Rice topped with tilipia  with egg based soup topped with green onions, broccoli and pepper side, also comes with Kimchi.',
    ingredients: 'Cabbage, Kosher Salt, Raddish, Scallions, Red Pepper Powder, Fish sauce.',
    image_url: 'menu3.jpg',
    price: 9.99, franchise_id: 1)
  # . . .    
    Menu.create!(menuID: '4',
    foodItem: 'Roast beef Dish',
    description: 'Out Premium Platter includes-Slice of premium roast beef from the French Alps, Exotic mystery cheese and apples, yams, kiwi, and fresh seasoned green peppers',
    ingredients: 'Salt, Pepper, Worshire Sauce, Milk, Butter',
    image_url: 'menu4.jpg',
    price: 9.99, franchise_id: 2)
  # . . .    
    Menu.create!(menuID: '5',
    foodItem: 'Chicken and Rice',
    description: 'Our Premium Platter includes-Chicken placed on a bed of rice, with mini tamales, and cucumber and cherry tomato salad, yogurt and yellow fruit.',
    ingredients: 'Salt, Pepper, Butter, Sazon, Chicken Broth',
    image_url: 'menu5.jpg',
    price: 11.99, franchise_id: 2)
  # . . .    
    Menu.create!(menuID: '6',
    foodItem: 'salmonator',
    description: 'Our Premium Platter includes - Salmon on a bed of spinich, cherry tomato and mozzorella balsamic vingerette salad and ziti side, with grapes for dessert.',
    ingredients: 'Fish Seasoning, Salt, Pepper, Butter',
    image_url: 'menu6.jpg',
    price: 11.99, franchise_id: 2)
 # . . .     
   Menu.create!(menuID: '7',
   foodItem: 'shrimp and riceness',
   description: 'Our Premium Platter includes - Shrimp on a bed of rice and tomatoe soup, mixed pepper salad, oat bread and half a slice of orange.',
    ingredients: 'Salt, Pepper, Butter, Sazon, Chicken Broth',
   image_url: 'menu7.jpg',
   price: 9.99, franchise_id: 2)
   # . . .   
    Menu.create!(menuID: '8',
    foodItem: 'Crepe',
    description: 'Our Premium Platter includes - Naan bread with saurkraut and cranberry dressing with mashed potatoes and 3 sausage links',
    ingredients: 'Salt, Pepper, Butter, Sazon, Chicken Broth, Flour, cummin',
    image_url: 'menu8.jpg',
    price: 11.99, franchise_id: 2)
    
     Menu.create!(menuID: '9',
    foodItem: 'Chicken Nuggets',
    description: 'Our Basic Platter includes - Chicken nuggets, tator tots, fresh orange from the Mountains of Dubai and a Chocolate Chip Cookie designed by chocolateers from Switzerland and pastuerized milk squeezed from a cow.',
    ingredients: 'Salt, Pepper, Butter, Sazon, Chicken Broth, Flour, Panco',
    image_url: 'menu9.jpg',
    price: 5.99, franchise_id: 2)
      #...
      Menu.create!(menuID: '10',
    foodItem: 'Cheese Burger Platter',
    description: 'Our Basic Platter includes - Cheese Burger from Brahma Bull meat, Great Value Fries, Rice Crispy treat from Grandma\'s Kitchen, Fresh lettuce and tomato from GMO grown veggies and pastuerized milk squeezed from a cow.',
    ingredients: 'Salt, Pepper, Butter, Sazon, Chicken Broth, Flour, Panco',
    image_url: 'menu10.jpg',
    price: 5.99, franchise_id: 2)
    
    Menu.create!(menuID: '11',
    foodItem: 'Vegetarian Delight',
    description: 'Our Basic Platter includes - GMO Produced Vegetables, freshly cooked chicken breast and pasteurized milk squeezed from a cow.',
    ingredients: 'Salt, Pepper, Butter, Sazon, Chicken Broth, Flour, Panco',
    image_url: 'menu11.png',
    price: 5.99, franchise_id: 2)
    Menu.create!(menuID: '12',
    foodItem: 'Turkey Sammich',
    description: 'Our Basic Platter includes - Turkey Sandwich, with berry salad as a side, and some baby carrots and peas, pasteurzed milk squeezed from a cow.',
    ingredients: 'Salt, Pepper, Butter, Sazon, Chicken Broth, Flour, Panco',
    image_url: 'menu12.jpg',
    price: 4.99, franchise_id: 2)
    
    Menu.create!(menuID: '13',
    foodItem: 'Dizzy Pizza',
    description: 'Our Basic Platter includes - Personal sized pizza made from scratch, chocolate donut, chocolate milk, chocolate pudding, and Fritos',
    ingredients: 'Salt, Pepper, Butter, Sazon, Cheese, Flour, pepperoni',
    image_url: 'menu13.jpg',
    price: 5.99, franchise_id: 2)
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
School.delete_all
School.create!(id: 607, name: 'Valdosta High School', address: '3101 N. Forrest St, Valdosta, GA. 31601', franchise_id: 1)
School.create!(id: 792, name: 'Valdosta Middle School', address: 'Burton St, Valdosta, GA. 31602', franchise_id: 1)
School.create!(id: 793, name: 'Lowndes High School', address: '1606 Norman Dr. Valdosta, GA. 31601', franchise_id: 1)
School.create!(id: 794, name: 'Georgia Christian School', address: '4359 Dasher Rd. Valdosta, GA. 31601', franchise_id: 2)
School.create!(id: 795, name: 'Highland Christian Academy', address: '2206 E Hill Ave. Valdosta, GA. 31601', franchise_id: 2)
School.create!(id: 796, name: 'Eastside Christian Academy Inc', address: '110 S Fry St., Valdosta, GA. 31601', franchise_id: 2)

Student.delete_all
Student.create!(id:     8701, fname: 'Rick', lname: 'Grimes', school_id: 607)
Student.create!(id:     8702, fname: 'Mary', lname: 'Hoppin', school_id: 607)
Student.create!(id:     8703, fname: 'Kevin',lname: 'Edward', school_id: 607)
Student.create!(id:     8704, fname: 'Gary', lname: 'Wood', school_id: 607)
Student.create!(id:     8705, fname: 'Roy',  lname: 'Bailey', school_id: 607)
Student.create!(id:     8706, fname: 'Lily', lname: 'Robin', school_id: 607)
Student.create!(id:     8707, fname: 'Nyna', lname: 'Park', school_id: 607)
Student.create!(id:     8708, fname: 'Lauren', lname: 'Clare', school_id: 607)
Student.create!(id:     8709, fname: 'Carl', lname: 'Stallone', school_id: 607)
Student.create!(id:     8710, fname: 'Clark', lname: 'Kent', school_id: 607)
Student.create!(id:     4311, fname: 'lucifer', lname: 'Satan', school_id: 792)
Student.create!(id:     4312, fname: 'Giovanni', lname: 'Luna', school_id: 792)
Student.create!(id:     4313, fname: 'Kun', lname: 'Kim', school_id: 792)
Student.create!(id:     4314, fname: 'Grigory', lname: 'Kashkin', school_id: 792)
Student.create!(id:     4315, fname: 'Zhiguang', lname: 'Xu', school_id: 792)
Student.create!(id:     4316, fname: 'Dave', lname: 'Gibson', school_id: 792)
Student.create!(id:     4317, fname: 'Shet', lname: 'hitfan', school_id: 792)
Student.create!(id:     4318, fname: 'Roger', lname: 'Willis', school_id: 792)
Student.create!(id:     4319, fname: 'Susan', lname: 'Grim', school_id: 792)
Student.create!(id:     4320, fname: 'Lois', lname: 'Lane', school_id: 792)




