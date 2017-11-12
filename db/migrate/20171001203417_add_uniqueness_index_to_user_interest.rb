class AddUniquenessIndexToUserInterest < ActiveRecord::Migration[5.1]
  def change
    add_index :user_interests, [:user_id, :interest_id], :unique => true
  end
end
