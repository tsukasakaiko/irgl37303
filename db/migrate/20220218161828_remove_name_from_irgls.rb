class RemoveNameFromIrgls < ActiveRecord::Migration[6.0]
  def change
    remove_column :irgls, :name, :string
  end
end
