class Review < ApplicationRecord
  belongs_to :place
  belongs_to :user
  belongs_to :feature
end
