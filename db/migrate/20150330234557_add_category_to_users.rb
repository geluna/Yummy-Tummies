class AddCategoryToUsers < ActiveRecord::Migration
  def change
    add_column :users, :category, :integer
  end
  
 class AddCategoryToUsers < ActiveRecord::Migration
    def self.up
    add_column :users, :category, :integer, :default => false
  end

  def self.down
    remove_column :users, :category
   end
  end
end
