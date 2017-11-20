class AddFullAddressToEvent < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :full_street_address, :string
  end
end
