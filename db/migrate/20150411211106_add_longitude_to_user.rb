class AddLongitudeToUser < ActiveRecord::Migration
  def change
    add_column :users, :longitude, :float
  end
  
  class AddLongitudeToUsers < ActiveRecord::Migration
    def self.up
    add_column :users, :longitude, :float, :default => false
  end

  def self.down
    remove_column :users, :Longitude
   end
  end
  
end
