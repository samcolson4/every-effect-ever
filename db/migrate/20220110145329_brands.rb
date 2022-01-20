class Brands < ActiveRecord::Migration[7.0]
  def change
    create_table :brands do |t|
      t.string :name
      t.integer :year_founded
      t.string :location_founded
      t.string :logo_image_link
      t.string :website_link
      t.text :notes
      
      t.timestamps
    end
  end
end
