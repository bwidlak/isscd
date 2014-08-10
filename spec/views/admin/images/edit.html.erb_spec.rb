require 'rails_helper'

RSpec.describe "admin/images/edit", :type => :view do
  before(:each) do
    @admin_image = assign(:admin_image, Admin::Image.create!(
      :name => "MyString",
      :url => "MyString"
    ))
  end

  it "renders the edit admin_image form" do
    render

    assert_select "form[action=?][method=?]", admin_image_path(@admin_image), "post" do

      assert_select "input#admin_image_name[name=?]", "admin_image[name]"

      assert_select "input#admin_image_url[name=?]", "admin_image[url]"
    end
  end
end
