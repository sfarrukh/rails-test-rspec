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


end
