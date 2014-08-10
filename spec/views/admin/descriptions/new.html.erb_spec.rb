require 'rails_helper'

RSpec.describe "admin/descriptions/new", :type => :view do
  before(:each) do
    assign(:admin_description, Admin::Description.new(
      :name => "MyString",
      :text => "MyText"
    ))
  end

  it "renders new admin_description form" do
    render

    assert_select "form[action=?][method=?]", admin_descriptions_path, "post" do

      assert_select "input#admin_description_name[name=?]", "admin_description[name]"

      assert_select "textarea#admin_description_text[name=?]", "admin_description[text]"
    end
  end
end
