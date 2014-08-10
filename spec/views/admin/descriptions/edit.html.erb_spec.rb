require 'rails_helper'

RSpec.describe "admin/descriptions/edit", :type => :view do
  before(:each) do
    @admin_description = assign(:admin_description, Admin::Description.create!(
      :name => "MyString",
      :text => "MyText"
    ))
  end

  it "renders the edit admin_description form" do
    render

    assert_select "form[action=?][method=?]", admin_description_path(@admin_description), "post" do

      assert_select "input#admin_description_name[name=?]", "admin_description[name]"

      assert_select "textarea#admin_description_text[name=?]", "admin_description[text]"
    end
  end
end
