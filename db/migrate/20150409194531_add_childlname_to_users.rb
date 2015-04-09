class AddChildlnameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :childlname, :string
  end
  
   class AddChildlnameToUsers < ActiveRecord::Migration
    def self.up
    add_column :users, :childlname, :string, :default => false
  end

  def self.down
    remove_column :users, :childlname
   end
  end
  
end
