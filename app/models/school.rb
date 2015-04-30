class School < ActiveRecord::Base
  geocoded_by :address
  #reverse_geocoded_by :latitude, :longitude
  after_validation :geocode
  belongs_to :frachise
  has_many :studnents, dependent: :destroy
  has_many :users, through: :students
end
