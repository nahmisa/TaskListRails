class AddBelongsToUserToTask < ActiveRecord::Migration
  # when we are adding an association at a later date, how do we get rails to index? 
  def change
    add_column :tasks, :user_id, :integer, index: true
  end
end
