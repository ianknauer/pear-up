class AddSpecialtyToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :specialty, :string
  end
end
