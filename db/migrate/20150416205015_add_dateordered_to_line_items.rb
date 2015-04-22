class AddDateorderedToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :dateordered, :string
  end
  class AddDateorderedToLineItems < ActiveRecord::Migration
    def self.up
    add_column :line_items, :dateordered, :string, :default => false
  end

  def self.down
    remove_column :line_items, :dateordered
   end
  end
  
end
