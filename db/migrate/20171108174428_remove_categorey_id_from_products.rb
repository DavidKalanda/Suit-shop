class RemoveCategoreyIdFromProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :category_id, :string
  end
end
