class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses, primary_key: 'address_id' do |t|
    	t.string :address, limit: 100
    	t.string :city, limit: 50
    	t.string :state, limit: 50
    	t.integer :zipcode, limit: 20
      t.timestamps
    end
  end

  def down
  	drop_table :addresses
  end
end
