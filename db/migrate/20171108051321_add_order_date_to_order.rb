class AddOrderDateToOrder < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :order_date, :date
  end
end
