class Franchise < ActiveRecord::Base
  extend ::Geocoder::Model::ActiveRecord
  
  geocoded_by :address
  reverse_geocoded_by :latitude, :longitude

  has_many :schools
  
  
end
