class CreateFeatures < ActiveRecord::Migration[5.0]
  def change
    create_table :features do |t|
      t.string :feature_name
      t.string :feature_description

      t.timestamps
    end
  end
end
