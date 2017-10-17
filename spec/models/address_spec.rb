require 'rails_helper'

RSpec.describe Address, type: :model do

  it "has_one customer" do
  	association = Address.reflect_on_association(:customer)
  	expect(association.macro).to eq(:has_one)
  end
end
