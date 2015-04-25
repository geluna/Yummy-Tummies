class CreateAccts < ActiveRecord::Migration
  def change
    create_table :accts do |t|
      t.float :credit
      t.float :debit
      t.float :balance
      t.belongs_to :user, index: true
      
      t.timestamps
    end
  end
end
