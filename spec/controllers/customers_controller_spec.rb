require 'rails_helper'

RSpec.describe CustomersController, type: :controller do

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
    let(:clients) { Customer.all }
    it "assigns clients to @customers" do
      expect(assigns['customers']).to eq(clients)
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
    let(:new_customer) { Customer.new }
    it "assigns new_customer to @customer" do
      expect(assigns['customer']).eql?(new_customer)
    end
  end

  let(:customer) { Customer.create(first_name: 'Test', last_name: 'Test',
    phone_number: 5101010, address_id: 10)}

  describe "POST #create" do
    before(:example) do
      post :create, params: { customer: { first_name: 'Test' }}
    end
    it "return http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    before(:example) do
      get :edit, params: { id: customer.id.to_s }
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it "renders edit template" do
      expect(response).to render_template(:edit)
    end
    it "assigns edit_customer to @customer" do
      expect(assigns['customer']).to eq(customer)
    end
  end

  describe "PATCH #update" do
    before(:example) do
      patch :update, params: { id: customer.id.to_s,
        customer: { first_name: 'Test' } }
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #delete" do
    before(:example) do
      get :delete, params: { id: customer.id.to_i }
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it "renders delete template" do
      expect(response).to render_template(:delete)
    end
    it "assigns delete_customer to @customer" do
      expect(assigns['customer']).to eq(customer)
    end
  end

  describe "DELETE #destroy" do
    before(:example) do
      delete :destroy, params: { id: customer.id.to_i }
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

end
