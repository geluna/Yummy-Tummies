class Student < ActiveRecord::Base
  belongs_to :school
  belongs_to :user
  
  
  validates :fname, :lname,  presence: true
  


end
