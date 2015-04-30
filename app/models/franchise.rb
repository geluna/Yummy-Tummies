class Franchise < ActiveRecord::Base
  has_many :schools

  scope :approved, -> { where(:franchise_approve => true) }
  scope :pending, -> { where(:franchise_approve => false) }
  
end
