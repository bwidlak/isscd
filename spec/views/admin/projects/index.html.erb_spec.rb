require 'rails_helper'

RSpec.describe "admin/projects/index", :type => :view do
  before(:each) do
    assign(:admin_projects, [
      Admin::Project.create!(
        :title => "Title",
        :permalink => "Permalink",
        :sequence => 1,
        :published => false
      ),
      Admin::Project.create!(
        :title => "Title",
        :permalink => "Permalink",
        :sequence => 1,
        :published => false
      )
    ])
  end

  it "renders a list of admin/projects" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Permalink".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
