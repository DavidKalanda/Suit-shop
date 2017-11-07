class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :product_id
      t.integer :size
      t.string :color

      t.timestamps
    end
  end
end
