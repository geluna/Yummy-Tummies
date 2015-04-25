class Student < ActiveRecord::Base
  belongs_to :user
  belongs_to :school
  
  validates :fname, :lname,  presence: true
end
