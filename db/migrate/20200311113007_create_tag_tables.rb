class CreateTagTables < ActiveRecord::Migration[5.2]
  def change
    create_table :tag_tables do |t|
      t.belongs_to :tag, index: true
      t.belongs_to :tuto, index: true

      t.timestamps
    end
  end
end
