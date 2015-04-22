class AddEmailToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :email, :string
  end
    class AddEmailToAccounts < ActiveRecord::Migration
    def self.up
    add_column :accounts, :email, :string, :default => false
  end

  def self.down
    remove_column :accounts, :email
  end
  
  end
end
