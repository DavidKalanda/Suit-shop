class AddCustomerIdToCustomer < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :customer_id, :string
  end
end
