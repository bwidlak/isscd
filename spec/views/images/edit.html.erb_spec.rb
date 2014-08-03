require 'rails_helper'

RSpec.describe "images/edit", :type => :view do
  before(:each) do
    @image = assign(:image, Image.create!(
      :project_id => 1,
      :url => "MyString"
    ))
  end

  it "renders the edit image form" do
    render

    assert_select "form[action=?][method=?]", image_path(@image), "post" do

      assert_select "input#image_project_id[name=?]", "image[project_id]"

      assert_select "input#image_url[name=?]", "image[url]"
    end
  end
end
