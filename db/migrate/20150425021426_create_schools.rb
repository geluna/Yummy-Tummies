class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.belongs_to :franchise, index: true

      t.timestamps
    end
  end
end
