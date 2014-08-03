require 'rails_helper'

RSpec.describe "images/new", :type => :view do
  before(:each) do
    assign(:image, Image.new(
      :project_id => 1,
      :url => "MyString"
    ))
  end

  it "renders new image form" do
    render

    assert_select "form[action=?][method=?]", images_path, "post" do

      assert_select "input#image_project_id[name=?]", "image[project_id]"

      assert_select "input#image_url[name=?]", "image[url]"
    end
  end
end
