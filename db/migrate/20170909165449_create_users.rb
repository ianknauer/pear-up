class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.text :biography
      t.string :gender
      t.boolean :volunteer

      t.timestamps
    end
  end
end
