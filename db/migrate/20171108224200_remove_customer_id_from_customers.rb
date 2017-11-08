class RemoveCustomerIdFromCustomers < ActiveRecord::Migration[5.1]
  def change
    remove_column :customers, :customer_id, :string
  end
end
