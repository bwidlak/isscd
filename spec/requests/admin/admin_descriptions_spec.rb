require 'rails_helper'

RSpec.describe "Admin::Descriptions", :type => :request do
  describe "GET /admin_descriptions" do
    it "works! (now write some real specs)" do
      get admin_descriptions_path
      expect(response.status).to be(200)
    end
  end
end
