class CreateFranchises < ActiveRecord::Migration
  def change
    create_table :franchises do |t|
      t.string :name
      t.string :address
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
