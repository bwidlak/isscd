require 'rails_helper'

RSpec.describe "admin/projects/edit", :type => :view do
  before(:each) do
    @admin_project = assign(:admin_project, Admin::Project.create!(
      :title => "MyString",
      :permalink => "MyString",
      :sequence => 1,
      :published => false
    ))
  end

  it "renders the edit admin_project form" do
    render

    assert_select "form[action=?][method=?]", admin_project_path(@admin_project), "post" do

      assert_select "input#admin_project_title[name=?]", "admin_project[title]"

      assert_select "input#admin_project_permalink[name=?]", "admin_project[permalink]"

      assert_select "input#admin_project_sequence[name=?]", "admin_project[sequence]"

      assert_select "input#admin_project_published[name=?]", "admin_project[published]"
    end
  end
end
