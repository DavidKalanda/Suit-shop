class RemoveOrderDateFromOrder < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :order_date, :date
  end
end
