class CreateStores < ActiveRecord::Migration[5.1]
  def change
    create_table :stores do |t|
      t.string :store_id
      t.string :address

      t.timestamps
    end
  end
end
