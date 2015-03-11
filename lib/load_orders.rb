User.transaction do
  User.delete_all
    User.create(:name => 'admin', :password => 'admin', :password_confirmation => 'admin')
end
