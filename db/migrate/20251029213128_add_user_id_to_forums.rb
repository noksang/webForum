class AddUserIdToForums < ActiveRecord::Migration[8.1]
  def change
    add_column :forums, :user_id, :integer
  end
end
