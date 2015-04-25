class School < ActiveRecord::Base
  belongs_to :frachise
  has_many :studnents, dependent: :destroy
  has_many :users, through: :students
end
