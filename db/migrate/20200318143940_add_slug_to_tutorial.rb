class AddSlugToTutorial < ActiveRecord::Migration[5.2]
  def change
    add_column :tutos, :slug, :string
    add_index :tutos, :slug, unique: true
  end
end
