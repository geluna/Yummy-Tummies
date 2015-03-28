# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
Menu.delete_all         
      Menu.create(foodItem: 'French Cuisine',
  description:
  %{<p>
      Crepe with sliced beets, sweet potatoes and split pea and carrot soup, served with wheat bun
      </p>},
      image_url: 'menu2.jpg',
      price: 6.99)
 # . . .     

      #...
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
