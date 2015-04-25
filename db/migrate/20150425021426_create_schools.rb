class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :address
      t.belongs_to :frachise, index: true

      t.timestamps
    end
  end
end
