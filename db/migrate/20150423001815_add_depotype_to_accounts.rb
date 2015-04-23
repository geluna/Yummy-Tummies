class AddDepotypeToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :depotype, :string
  end
  class AddDepotypeToAccounts < ActiveRecord::Migration
    def self.up
    add_column :accounts, :depotype, :string
  end

  def self.down
    remove_column :accounts, :depotype
  end
  
end
end
