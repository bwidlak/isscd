require 'rails_helper'

RSpec.describe "admin/images/new", :type => :view do
  before(:each) do
    assign(:admin_image, Admin::Image.new(
      :name => "MyString",
      :url => "MyString"
    ))
  end

  it "renders new admin_image form" do
    render

    assert_select "form[action=?][method=?]", admin_images_path, "post" do

      assert_select "input#admin_image_name[name=?]", "admin_image[name]"

      assert_select "input#admin_image_url[name=?]", "admin_image[url]"
    end
  end
end
