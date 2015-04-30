class AddFranchiseApproveToFranchises < ActiveRecord::Migration
  def change
  	add_column :franchises, :franchise_approve, :boolean
  end
end
