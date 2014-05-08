class LocationType < ActiveRecord::Base
  has_many :addresses
end
