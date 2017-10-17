require 'rails_helper'

RSpec.describe Customer, type: :model do

	it "is not valid when one of Customer table fields is blank" do
		subject.first_name = ''  					# first_name is blank
		subject.last_name = "Mercury"
		subject.phone_number = 9251000000
		subject.address_id = 2
		expect(subject).not_to be_valid
	end

	it "is not valid when one of Customer table fields is nil" do
		subject.first_name = 'Adam'
		subject.last_name = "Mercury"
		subject.phone_number = 9251000000
		subject.address_id = nil					# address_id is nil
		expect(subject).not_to be_valid
	end

	it "is not valid if first_name or last_name is more than 50 characters" do
		subject.first_name = 'string'*20	# first_name is too long
		subject.last_name = "Mercury"
		subject.phone_number = 9251000000
		subject.address_id = 2
		expect(subject).not_to be_valid
	end

	it "is not valid if one of field's format is not as expected" do
		subject.first_name = 'Adam'
		subject.last_name = 'Browns'						
		subject.phone_number = 9251000000
		subject.address_id = 'okok'				# address_id should be in integer format
		expect(subject).not_to be_valid
	end

	it "#name_phone" do
		subject.first_name = "Jason"
		subject.last_name = "Browns"
		subject.phone_number = 9251101010
		expect(subject.name_phone).to eq("Jason Browns 9251101010")
	end

	it "belongs_to address" do
		association = Customer.reflect_on_association(:address)
		expect(association.macro).to eq (:belongs_to)
	end


end
