class AddEmailAndPasswordDigestToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :email, :string, unique: true
    add_column :users, :password_digest, :string, null: false
  end
end
