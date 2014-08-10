require 'rails_helper'

RSpec.describe "admin/images/index", :type => :view do
  before(:each) do
    assign(:admin_images, [
      Admin::Image.create!(
        :name => "Name",
        :url => "Url"
      ),
      Admin::Image.create!(
        :name => "Name",
        :url => "Url"
      )
    ])
  end

  it "renders a list of admin/images" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end
