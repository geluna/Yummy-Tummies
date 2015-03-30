class AddFranchiseOwnerToUsers < ActiveRecord::Migration
  def change
    add_column :users, :franchiseOwner, :boolean
  end
end
