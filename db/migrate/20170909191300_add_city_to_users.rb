class AddCityToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :city, :string
    add_column :users, :country, :string
  end
end
