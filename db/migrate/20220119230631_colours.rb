class Colours < ActiveRecord::Migration[7.0]
  def change
    add_column :versions, :colours, :string, array: true, default: []
  end
end
