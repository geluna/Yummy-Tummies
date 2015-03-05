class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :menu, index: true
      t.belongs_to :cart, index: true

      t.timestamps
    end
  end
end
