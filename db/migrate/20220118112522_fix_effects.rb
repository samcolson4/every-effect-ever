class FixEffects < ActiveRecord::Migration[7.0]
  def change
    create_table :effects do |t|
      t.belongs_to :brand, index: true, foreign_key: true
      t.string :name
      t.integer :page_views
      t.string :image_link
      t.text :notes
      t.timestamps
    end
  end
end
