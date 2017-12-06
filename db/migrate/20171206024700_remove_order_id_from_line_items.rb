class RemoveOrderIdFromLineItems < ActiveRecord::Migration[5.1]
  def change
    remove_reference :line_items, :order_id, foreign_key: true
  end
end
