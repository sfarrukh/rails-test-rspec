class Customer < ApplicationRecord

	has_one :address, foreign_key: 'address_id'

	validates :first_name, :last_name, :phone_number, :address_id, presence: true
	validates :first_name, :last_name, length: { maximum: 50 }, format: { with: /\A[a-zA-Z ]+\z/ }
	validates :phone_number, length: { maximum: 15 }
	validates :address_id, length: { maximum: 10 }

	def name_phone
		"#{first_name} #{last_name} #{phone_number}"
	end
end
