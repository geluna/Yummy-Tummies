class AddDateforToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :datefor, :date
  end
end
