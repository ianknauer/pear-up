class CreateUserNeeds < ActiveRecord::Migration[5.1]
  def change
    create_table :user_needs do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :need, foreign_key: true

      t.timestamps
    end
  end
end
