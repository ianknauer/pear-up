class AddPicToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :pic, :string

  end
end
