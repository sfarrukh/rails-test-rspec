class Customer < ApplicationRecord

	validates :first_name, :last_name, :phone_number, :address_id, presence: true
end
