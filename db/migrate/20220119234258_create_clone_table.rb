class CreateCloneTable < ActiveRecord::Migration[7.0]
  def change
    create_table :clones do |t|
      t.references :original_effect, foreign_key: { to_table: :versions }, null: false
      t.references :effect_clone, foreign_key: { to_table: :versions }, null: false
      t.string :notes
      
      t.timestamps
    end
  end
end
