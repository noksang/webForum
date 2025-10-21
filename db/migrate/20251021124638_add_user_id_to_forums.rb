class AddUserIdToForums < ActiveRecord::Migration[8.0]
  def change
    add_column :forums, :user_id, :integer
  end
end
