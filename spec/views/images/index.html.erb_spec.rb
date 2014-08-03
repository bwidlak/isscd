require 'rails_helper'

RSpec.describe "images/index", :type => :view do
  before(:each) do
    assign(:images, [
      Image.create!(
        :project_id => 1,
        :url => "Url"
      ),
      Image.create!(
        :project_id => 1,
        :url => "Url"
      )
    ])
  end

  it "renders a list of images" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end
