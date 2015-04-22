class AddCreditToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :credit, :float
  end
 
 class AddCreditToAccounts < ActiveRecord::Migration
    def self.up
    add_column :accounts, :credit, :float, :default => false
  end

  def self.down
    remove_column :accounts, :credit
  end
  
end
end
