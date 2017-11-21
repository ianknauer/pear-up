class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.text :ingredients
      t.integer :spots
      t.string :dish

      t.timestamps
    end
  end
end
