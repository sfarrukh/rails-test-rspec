require 'rails_helper'

RSpec.describe Address, type: :model do

  it "has_one customer" do
  	association = Address.reflect_on_association(:customer)
  	expect(association.macro).to eq(:has_one)
  end

  it "is not valid when one of Address table fields is blank" do
    subject.address = ""
    subject.city = "Ruby"
    subject.state = "Github"
    subject.zipcode = 94103
    expect(subject).not_to be_valid
  end

  it "is not valid when one of Customer table fields is nil" do
    subject.address = "1010 Rspec Dr"
    subject.city = "Ruby"
    subject.state = "Github"
    subject.zipcode = nil
    expect(subject).not_to be_valid
  end

  it "is not valid if address, city or state is more than 50 characters" do
    subject.address = "1010 Rspec Dr"
    subject.city = "Ruby"*50
    subject.state = "Github"
    subject.zipcode = nil
    expect(subject).not_to be_valid
  end

  it "is not valid if one of field's format is not as expected" do
    subject.address = 12
    subject.city = "Ruby"
    subject.state = "Github"
    subject.zipcode = nil
    expect(subject).not_to be_valid
  end
end
