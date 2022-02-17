class CreateIrgls < ActiveRecord::Migration[6.0]
  def change
    create_table :irgls do |t|
      t.string :name
      t.string :text
      t.text :image

      t.timestamps
    end
  end
end
