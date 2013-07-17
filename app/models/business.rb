class Business < ActiveRecord::Base
  attr_accessible :address, :city, :latitude, :longitude, :name, :postal_code, :state
end
