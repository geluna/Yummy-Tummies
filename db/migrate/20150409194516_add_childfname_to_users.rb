class AddChildfnameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :childfname, :string
  end
  
  class AddChildfnameToUsers < ActiveRecord::Migration
    def self.up
    add_column :users, :childfname, :string, :default => false
  end

  def self.down
    remove_column :users, :childfname
   end
  end
end
