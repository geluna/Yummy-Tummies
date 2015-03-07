# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
Menu.delete_all
#...      
      Menu.create!(foodItem: 'South American platter',
  description:
  %{<p>
      Yellow Rice top with black beans, plantains, fresh dark green salad, shredded pork with peppers and cilantro with a whole wheat and oat bun 
      </p>},
      image_url: 'menu1.jpg',
      price: 6.99)
      
      Menu.create!(foodItem: 'French Cuisine',
  description:
  %{<p>
      Crepe with sliced beets, sweet potatoes and split pea and carrot soup, served with wheat bun
      </p>},
      image_url: 'menu2.jpg',
      price: 6.99)
      
    Menu.create!(foodItem: 'Asian Delight',
  description:
  %{<p>
       rice topped with tilipia  with egg based soup topped with green onions, broccoli and pepper side, also comes with Kimchi.
      </p>},
      image_url: 'menu3.jpg',
      price: 6.99)
      
    Menu.create!(foodItem: 'Roast beef Dish',
  description:
  %{<p>
      Slice of premium roast beef from the French Alps, Exotic mystery cheese and apples, yams, kiwi, and fresh seasoned green peppers
      </p>},
      image_url: 'menu4.jpg',
      price: 6.99)
      
    Menu.create!(foodItem: 'Chicken and Rice',
  description:
  %{<p>
      Chicken placed on a bed of rice, with mini tamales, and cucumber and cherry tomatoe salad, yougurt and yellow fruit.
      </p>},
      image_url: 'menu5.jpg',
      price: 6.99)
      
    Menu.create!(foodItem: 'salmonator',
  description:
  %{<p>
      samon on a bed of spinich, cherry tomatoe and mozzorella balsamic vingerette salade and ziti side, with graps for dessert
      </p>},
      image_url: 'menu6.jpg',
      price: 6.99)
      
   Menu.create!(foodItem: 'shrimp and riceness',
  description:
  %{<p>
     shrimp on a bed of rice and tomatoe soup, mixed pepper salad, oat bread and half a slice of orange
      </p>},
      image_url: 'menu7.jpg',
      price: 6.99)
      
    Menu.create!(foodItem: 'Crepe',
  description:
  %{<p>
      naan bread with saurkraut and cranberry dressing with mashed potatoes and 3 sausage links
      </p>},
      image_url: 'menu8.jpg',
      price: 6.99)
      #...
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
