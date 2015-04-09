class AddFnameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fname, :string
  end
  class AddFnameToUsers < ActiveRecord::Migration
    def self.up
    add_column :users, :fname, :string, :default => false
  end

  def self.down
    remove_column :users, :fname
   end
  end
  
end
