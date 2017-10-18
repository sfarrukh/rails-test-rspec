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
  end

  describe "GET #edit" do
    before(:example) do
      get :edit
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it "renders edit template" do
      expect(response).to render_template(:edit)
    end
  end

  describe "GET #delete" do
    before(:example) do
      get :delete
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it "renders delete template" do
      expect(response).to render_template(:delete)
    end
  end

end
