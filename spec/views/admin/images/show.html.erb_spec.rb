require 'rails_helper'

RSpec.describe "admin/images/show", :type => :view do
  before(:each) do
    @admin_image = assign(:admin_image, Admin::Image.create!(
      :name => "Name",
      :url => "Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Url/)
  end
end
