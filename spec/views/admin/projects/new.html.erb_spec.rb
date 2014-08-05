require 'rails_helper'

RSpec.describe "admin/projects/new", :type => :view do
  before(:each) do
    assign(:admin_project, Admin::Project.new(
      :title => "MyString",
      :permalink => "MyString",
      :sequence => 1,
      :published => false
    ))
  end

  it "renders new admin_project form" do
    render

    assert_select "form[action=?][method=?]", admin_projects_path, "post" do

      assert_select "input#admin_project_title[name=?]", "admin_project[title]"

      assert_select "input#admin_project_permalink[name=?]", "admin_project[permalink]"

      assert_select "input#admin_project_sequence[name=?]", "admin_project[sequence]"

      assert_select "input#admin_project_published[name=?]", "admin_project[published]"
    end
  end
end
