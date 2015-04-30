class School < ActiveRecord::Base
  belongs_to :frachise
  has_many :studnents, dependent: :destroy
  has_many :users, through: :students

  #scope :approved, where(:school_approve => true)
  scope :approved, -> { where(:school_approve => true) }
  scope :pending, -> { where(:school_approve => false) }
  #scope :pending,  where(:school_approve => false)
end
