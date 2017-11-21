class AddInstructorNameToEvent < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :instructor, :string
  end
end
