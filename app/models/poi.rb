class Poi < ActiveRecord::Base
  belongs_to :category
  has_and_belongs_to_many :tags

  geocoded_by :address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates
end
