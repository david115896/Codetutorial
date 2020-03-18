class AddColumnsToLanguage < ActiveRecord::Migration[5.2]
  def change
    add_column :languages, :rouge_name, :string
  end
end
