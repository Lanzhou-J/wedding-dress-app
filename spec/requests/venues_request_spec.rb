require 'rails_helper'

RSpec.describe "Venues", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/venues/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/venues/show"
      expect(response).to have_http_status(:success)
    end
  end

end
