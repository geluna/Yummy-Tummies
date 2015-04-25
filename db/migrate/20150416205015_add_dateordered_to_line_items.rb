class AddDateorderedToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :comment, :string
  end
  class AddDateorderedToLineItems < ActiveRecord::Migration
    def self.up
    add_column :line_items, :comment, :string, :default => false
  end

  def self.down
    remove_column :line_items, :comment
   end
  end
  
end
