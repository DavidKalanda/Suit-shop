class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :number
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
