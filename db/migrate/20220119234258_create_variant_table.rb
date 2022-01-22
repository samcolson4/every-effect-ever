class CreateVariantTable < ActiveRecord::Migration[7.0]
  def change
    create_table :variants do |t|
      t.references :original_effect, foreign_key: { to_table: :versions }, null: false
      t.references :effect_variant, foreign_key: { to_table: :versions }, null: false
      t.text :notes

      t.timestamps
    end
  end
end
