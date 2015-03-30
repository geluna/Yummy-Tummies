class AddInstitutionToUsers < ActiveRecord::Migration
  def change
    add_column :users, :institution, :boolean
  end
end
