class AddDateorderedToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :dateordered, :string
  end
end
