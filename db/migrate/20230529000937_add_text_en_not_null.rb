class AddTextEnNotNull < ActiveRecord::Migration[7.0]
  def change
    change_column_null :notes, :text_en, false
  end
end
