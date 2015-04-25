class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :fname
      t.string :lname
      

      t.timestamps
      t.belongs_to :school, index: true
      t.belongs_to :user, index: true
    end
  end
end
