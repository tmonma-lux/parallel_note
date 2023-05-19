class CreatePhrases < ActiveRecord::Migration[7.0]
  def change
    create_table :phrases do |t|
      t.references :note, null: false, foreign_key: true
      t.string :expression_en, null: false
      t.string :expression_ja, null: false

      t.timestamps
    end
  end
end
