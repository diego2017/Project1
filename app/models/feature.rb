class Feature < ApplicationRecord
  has_and_belongs_to_many :places
  has_many :reviews

  def review_counts( place_id )
    # Review.where(place_id: @place.id, feature_id: f.id).group(:like).count

    # we need to pass in a place_id to limit the reviews to only reviews for the current place -
    # but a feature belongs to many places, so we have no one place to automatically use
    reviews.where(place_id: place_id).group(:like).count
  end

end
