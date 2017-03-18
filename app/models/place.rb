class Place < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :features
  has_many :reviews
  validates_uniqueness_of :name
end
