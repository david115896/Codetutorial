class CreateLanguageTables < ActiveRecord::Migration[5.2]
  def change
    create_table :language_tables do |t|
      t.belongs_to :language, index: true
      t.belongs_to :tuto, index: true

      t.timestamps
    end
  end
end
