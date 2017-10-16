class Customer < ApplicationRecord

	validates :first_name, :last_name, :phone_number, :address_id, presence: true
	validates :first_name, :last_name, length: { maximum: 50 }, format: { with: /\A[a-zA-Z ]+\z/ }
	validates :phone_number, length: { maximum: 15 }, format: { with: /\A(\d{10}|\(?\d{3}\)?[-. ]\d{3}[-.]\d{4})\z/ }
	validates :address_id, length: { maximum: 10 }, format: { with:  /\A(\+1)?[0-9]{10}\z/ }

	def name_phone
		"#{first_name} #{last_name} #{phone_number}"
	end
end
