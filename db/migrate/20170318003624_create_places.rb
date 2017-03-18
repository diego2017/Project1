class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.integer :user_id
      t.string :name
      t.string :int_number
      t.string :street_number
      t.string :street_name
      t.string :suburb
      t.string :state
      t.string :postcode
      t.string :country
      t.string :geo_location

      t.timestamps
    end
  end
end
