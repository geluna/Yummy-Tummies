class Student < ActiveRecord::Base
  belongs_to :school
  belongs_to :user
  
  
  validates :fname, :lname,  presence: true
  validates_length_of :id, :is => 4, allow_blank: false
end
