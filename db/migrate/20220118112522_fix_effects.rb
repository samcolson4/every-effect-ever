class FixEffects < ActiveRecord::Migration[7.0]
  def change
    create_table :effects do |t|
      t.string :name
      t.string :brand
      t.integer :page_views
      t.timestamps
    end
  end
end
