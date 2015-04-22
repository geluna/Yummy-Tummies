class AddLatitudeToUser < ActiveRecord::Migration
  def change
    add_column :users, :latitude, :float
  end
  class AddLatitudeToUsers < ActiveRecord::Migration
    def self.up
    add_column :users, :latitude, :float, :default => false
  end

  def self.down
    remove_column :users, :latitude
   end
  
end
end
