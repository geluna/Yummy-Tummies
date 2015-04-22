class AddDateforToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :datefor, :string
  end
  class AddDateforToLineItems < ActiveRecord::Migration
    def self.up
    add_column :line_items, :datefor, :string, :default => false
  end

  def self.down
    remove_column :line_items, :datefor
   end
  end
  
end
