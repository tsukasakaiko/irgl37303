class AddUserIdToIrgls < ActiveRecord::Migration[6.0]
  def change
    add_column :irgls, :user_id, :integer
  end
end
