require 'rails_helper'

RSpec.describe "Admin::Images", :type => :request do
  describe "GET /admin_images" do
    it "works! (now write some real specs)" do
      get admin_images_path
      expect(response.status).to be(200)
    end
  end
end
