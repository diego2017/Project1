class User < ApplicationRecord
  has_secure_password
  has_many :reviews
  has_many :places
  validates_uniqueness_of :email
end
