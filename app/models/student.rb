class Student < ActiveRecord::Base
  belongs_to :user
  
  validates :id, :fname, :lname,  presence: true
end
