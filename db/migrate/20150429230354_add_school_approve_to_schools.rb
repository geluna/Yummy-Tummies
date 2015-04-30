class AddSchoolApproveToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :school_approve, :boolean
  end
end
