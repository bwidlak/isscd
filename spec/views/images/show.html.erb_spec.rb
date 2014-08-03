require 'rails_helper'

RSpec.describe "images/show", :type => :view do
  before(:each) do
    @image = assign(:image, Image.create!(
      :project_id => 1,
      :url => "Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Url/)
  end
end
