class CreateFeaturesPlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :features_places do |t|
      t.integer :place_id
      t.integer :feature_id
    end
  end
end
