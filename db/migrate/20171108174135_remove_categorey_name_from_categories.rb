class RemoveCategoreyNameFromCategories < ActiveRecord::Migration[5.1]
  def change
    remove_column :categories, :categorey_name, :string
  end
end
