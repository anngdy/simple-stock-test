require 'rails_helper'

RSpec.describe "AvailableProducts", type: :request do
  describe "GET /available_products" do
    it "works! (now write some real specs)" do
      get available_products_path
      expect(response).to have_http_status(200)
    end
  end
end
