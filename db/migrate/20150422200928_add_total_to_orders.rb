class AddTotalToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :total, :float
  end
  
  class AddTotalToOrders < ActiveRecord::Migration
    def self.up
    add_column :orders, :total, :float, :default => false
  end

  def self.down
    remove_column :orders, :total
  end
  
end
end
