class AddCloneBool < ActiveRecord::Migration[7.0]
  def change
    add_column :variants, :is_clone, :bool
  end
end
