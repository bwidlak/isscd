require 'rails_helper'

RSpec.describe "Admin::Projects", :type => :request do
  describe "GET /admin_projects" do
    it "works! (now write some real specs)" do
      get admin_projects_path
      expect(response.status).to be(200)
    end
  end
end
