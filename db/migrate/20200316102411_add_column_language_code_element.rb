class AddColumnLanguageCodeElement < ActiveRecord::Migration[5.2]
  def change
    add_column :elements, :language_code, :string
    add_column :elements, :language_text, :string

  end
end
