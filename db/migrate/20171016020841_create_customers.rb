class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :first_name, limit: 50
      t.string :last_name, limit: 50
      t.integer :phone_number, limit: 15
      t.integer :address_id, limit: 10
      t.timestamps
    end
  end
end
