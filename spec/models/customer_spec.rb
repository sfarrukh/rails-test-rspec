require 'rails_helper'

RSpec.describe Customer, type: :model do

	it "is not valid when first_name || last_name || phone_number || address_id is blank" do
		subject.first_name = 'm'
		subject.last_name = 'n'
		subject.phone_number = 1
		subject.address_id = 1
		expect(subject).to be_valid
	end
end
