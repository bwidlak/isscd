require 'rails_helper'

RSpec.describe "admin/descriptions/index", :type => :view do
  before(:each) do
    assign(:admin_descriptions, [
      Admin::Description.create!(
        :name => "Name",
        :text => "MyText"
      ),
      Admin::Description.create!(
        :name => "Name",
        :text => "MyText"
      )
    ])
  end

  it "renders a list of admin/descriptions" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
