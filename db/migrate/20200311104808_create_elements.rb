class CreateElements < ActiveRecord::Migration[5.2]
  def change
    create_table :elements do |t|
      t.string :text
      t.string :code
      t.string :reference
      t.integer :order

      t.belongs_to :tuto, index: true
			t.belongs_to :style, index: true

      t.timestamps
    end
  end
end
