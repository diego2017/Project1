class Place < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :features
  has_many :reviews
  validates_uniqueness_of :name
  geocoded_by :full_street_address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

  def full_street_address
    # joins all the elements entered by user to create a full address
    street_number + " " + street_name + ", " + suburb + " " + state + " " + postcode + country
  end
end
