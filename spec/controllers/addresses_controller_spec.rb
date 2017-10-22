require 'rails_helper'

RSpec.describe AddressesController, type: :controller do

  describe "GET #index" do
    before(:example) do
      get :index
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it "renders index template" do
      expect(response).to render_template(:index)
    end
    let(:all_addresses) { Address.all }
    it "assigns all_addresses to @addresses" do
      expect(assigns['addresses']).to eq(all_addresses)
    end
  end

  describe "GET #new" do
    before(:example) do
      get :new
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it "renders new template" do
      expect(response).to render_template(:new)
    end
    let(:new_address) { Customer.new }
    it "assigns new_address to @address" do
      expect(assigns['address']).eql?(new_address)
    end
  end

  describe "POST #create" do
    before(:example) do
      post :create, params: { address:
        { address: '10 Test st', city: 'Test city', state: 'Test', zipcode: 01010 }}
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  let(:manzil) { Address.create(address: '10 Test st', city: 'Test city',
    state: 'Test', zipcode: 01010)}

  describe "GET #edit" do
    before(:example) do
      get :edit, params: { id: manzil.address_id.to_s }
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it "renders edit template" do
      expect(response).to render_template(:edit)
    end
    it "assigns edit_address to @address" do
      expect(assigns['address']).to eq(manzil)
    end
  end

  describe "PATCH #update" do
    before(:example) do
      patch :update, params: { id: manzil.address_id.to_s }
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #delete" do
    before(:example) do
      get :delete, params: { id: manzil.address_id.to_s }
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it "renders delete template" do
      expect(response).to render_template(:delete)
    end
    it "assigns delete_address to @address" do
      expect(assigns['address']).to eq(manzil)
    end
  end

  describe "DELETE #destroy" do
    before(:example) do
      delete :destroy, params: { id: manzil.address_id }
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

end
