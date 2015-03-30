class AddRegularUserToUsers < ActiveRecord::Migration
  def change
    add_column :users, :regularUser, :boolean
  end
end
