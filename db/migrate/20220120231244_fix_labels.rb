class FixLabels < ActiveRecord::Migration[7.0]
  def change
    rename_column :versions, :format, :effect_format
    add_column :versions, :effect_type, :string
  end
end
