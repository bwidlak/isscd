require 'rails_helper'

RSpec.describe "admin/projects/show", :type => :view do
  before(:each) do
    @admin_project = assign(:admin_project, Admin::Project.create!(
      :title => "Title",
      :permalink => "Permalink",
      :sequence => 1,
      :published => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Permalink/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/false/)
  end
end
