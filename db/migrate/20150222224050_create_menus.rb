class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.integer :menuID
      t.string :foodItem
      t.text :description
      t.string :image_url
      t.string :school
      t.string :franOwner
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
