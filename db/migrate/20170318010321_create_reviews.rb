class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :feature_id
      t.integer :place_id
      t.integer :user_id
      t.boolean :like

      t.timestamps
    end
  end
end
