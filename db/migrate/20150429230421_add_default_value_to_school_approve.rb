class AddDefaultValueToSchoolApprove < ActiveRecord::Migration
  def up
  	change_column :schools, :school_approve, :boolean, :default => false
  end
  def down
  	change_column :schools, :school_approve, :boolean, :default => false
  end
end
