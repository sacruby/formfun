class Person < ActiveRecord::Base
  has_many :addresses
  has_many :phones

  accepts_nested_attributes_for :addresses, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :phones, allow_destroy: true, reject_if: :all_blank
end
