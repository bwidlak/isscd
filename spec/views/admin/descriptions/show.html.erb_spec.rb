require 'rails_helper'

RSpec.describe "admin/descriptions/show", :type => :view do
  before(:each) do
    @admin_description = assign(:admin_description, Admin::Description.create!(
      :name => "Name",
      :text => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
