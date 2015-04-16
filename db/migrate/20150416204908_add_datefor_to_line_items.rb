class AddDateforToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :datefor, :string
  end
end
