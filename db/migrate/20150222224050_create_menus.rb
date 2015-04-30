class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.integer :menuID
      t.string :foodItem
      t.text :description
      t.string :image_url
      t.decimal :price, precision: 8, scale: 2

      t.belongs_to :franchise, index: true
      t.timestamps
    end
  end
end
