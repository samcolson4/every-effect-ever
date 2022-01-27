class CountryAndCity < ActiveRecord::Migration[7.0]
  def change
    remove_column :brands, :location_founded
    add_column :brands, :country_founded, :string
    add_column :brands, :area_founded, :string
  end
end
