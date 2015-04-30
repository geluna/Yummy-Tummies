class Franchise < ActiveRecord::Base
  extend ::Geocoder::Model::ActiveRecord
  
  geocoded_by :address
  reverse_geocoded_by :latitude, :longitude

  has_many :schools

  scope :approved, -> { where(:franchise_approve => true) }
  scope :pending, -> { where(:franchise_approve => false) }
  
  
end
