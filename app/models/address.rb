class Address < ApplicationRecord
	has_one :customer

	validates :address, :city, :state, :zipcode, presence: true
	validates :address, :city, :state, length: { maximum: 60 }, format: { with: /\A[a-zA-Z ]+\z/ }
	validates :zipcode, length: { maximum: 10 }
end
