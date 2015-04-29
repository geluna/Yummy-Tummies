class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.text :address
      t.string :email
      t.date  :datefor

      t.timestamps
      t.belongs_to :account, index: true
    end
  end
end
