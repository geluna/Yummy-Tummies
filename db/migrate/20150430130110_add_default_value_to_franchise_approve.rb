class AddDefaultValueToFranchiseApprove < ActiveRecord::Migration
  def up
  	change_column :franchises, :franchise_approve, :boolean, :default => false
  end
  def down
  	change_column :franchises, :franchise_approve, :boolean, :default => false
  end
end
