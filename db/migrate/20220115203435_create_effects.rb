class CreateEffects < ActiveRecord::Migration[7.0]
  def change
    create_table :effects do |t|
      t.string :name
      t.string :brand
      t.integer :release_year
      t.integer :discontinued_year
      t.string :country_of_origin
      t.string :current_manufacturing_location
      t.string :previous_manufacturing_location
      t.timestamps
    end
  end
end
