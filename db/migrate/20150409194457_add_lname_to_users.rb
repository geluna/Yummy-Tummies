class AddLnameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :lname, :string
  end
  
  class AddLnameToUsers < ActiveRecord::Migration
    def self.up
    add_column :users, :lname, :string, :default => false
  end

  def self.down
    remove_column :users, :lname
   end
  end
  
end
