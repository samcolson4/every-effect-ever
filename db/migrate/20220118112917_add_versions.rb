class AddVersions < ActiveRecord::Migration[7.0]
  def change
    create_table :versions do |t|
      t.belongs_to :effect, index: true, foreign_key: true
      t.string :version_name
      t.integer :version_iteration
      t.integer :year_released
      t.integer :year_discontinued
      t.string :manufacturing_location_current
      t.string :manufacturing_location_former
      t.string :country_of_origin
      t.text :notes

      t.timestamps
    end
  end
end
