class AddIngredientsToMenus < ActiveRecord::Migration
  def change
    add_column :menus, :ingredients, :string
  end
  
   class AddIngredientsToMenus < ActiveRecord::Migration
    def self.up
    add_column :menus, :ingredients, :string
  end

  def self.down
    remove_column :menus, :ingredients
  end
  
end
end
