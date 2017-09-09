class AddAvatarsToUsers < ActiveRecord::Migration[5.1]
  def up
    add_attachment :users, :avatar
  end

  def down
    remove_attachement :usrs, :avatar
  end
end
