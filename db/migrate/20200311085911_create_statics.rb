class CreateStatics < ActiveRecord::Migration[5.2]
  def change
    create_table :statics do |t|

      t.timestamps
    end
  end
end
