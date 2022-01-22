class AddDimensions < ActiveRecord::Migration[7.0]
  def change
    add_column :versions, :length, :decimal
    add_column :versions, :width, :decimal
    add_column :versions, :height, :decimal
    add_column :versions, :sources, :text, array: true, default: []
  end
end
