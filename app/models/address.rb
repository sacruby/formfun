class Address < ActiveRecord::Base
  belongs_to :location_type
  belongs_to :person
end
