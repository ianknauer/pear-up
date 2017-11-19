class AddRolesToUserEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :user_events, :role, :string
  end
end
