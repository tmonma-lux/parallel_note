class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.string :title, null: false
      t.text :text_en
      t.text :text_ja
      t.text :free_text

      t.timestamps
    end
  end
end
