class AddAcctbalToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :acctbal, :float
  end
  
class AddAcctbalToAccounts < ActiveRecord::Migration
    def self.up
    add_column :accounts, :acctbal, :float, :default => false
  end

  def self.down
    remove_column :accounts, :float
  end
  
end
end
