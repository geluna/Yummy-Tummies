class AddAddressToUsers < ActiveRecord::Migration
  def change
    add_column :users, :address, :string
  end
  
   class AddAddressToUsers < ActiveRecord::Migration
    def self.up
    add_column :users, :address, :string, :default => false
  end

  def self.down
    remove_column :users, :address
   end
  end
  
end
