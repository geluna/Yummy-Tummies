class Student < ActiveRecord::Base
  belongs_to :school
  belongs_to :user
  
  
  validates :fname, :lname,  presence: true
<<<<<<< HEAD
  validates_length_of :id, :is => 4, allow_blank: false
=======
  


>>>>>>> c06fd449b9f67ab1a220e9206a9f8b8cc3f9bc2b
end
