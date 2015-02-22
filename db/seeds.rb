# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
Menu.delete_all
#...
Menu.create!(foodItem: 'Peanut Butter and Jelly Sandwich',
  description:
  %{<p>
      Peanut Butter and Jelly Sandwich is made from ...
      </p>},
      image_url: 'pj.jpg',
      price: 102.99)
      #...
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
