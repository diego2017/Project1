class Feature < ApplicationRecord
  has_and_belongs_to_many :places
  has_many :reviews

  def review_counts
    # Review.where(place_id: @place.id, feature_id: f.id).group(:like).count
    reviews.group(:like).count
  end

end
