class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.text :description
      t.string :nickname
      t.string :name
      t.string :plant_family
      t.string :latin_name
      t.string :sunlight
      t.string :water
      t.string :image_url
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
