class AddDebitToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :debit, :float
  end
  
 class AddDebitToAccounts < ActiveRecord::Migration
    def self.up
    add_column :accounts, :debit, :float, :default => false
  end

  def self.down
    remove_column :accounts, :debit
  end
  
end
end
