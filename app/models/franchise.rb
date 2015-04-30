class Franchise < ActiveRecord::Base
  has_many :schools

  scope :approved, -> { where(:school_approve => true) }
  scope :pending, -> { where(:school_approve => false) }
  
end
