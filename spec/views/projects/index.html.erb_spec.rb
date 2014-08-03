require 'rails_helper'

RSpec.describe "projects/index", :type => :view do
  before(:each) do
    assign(:projects, [
      Project.create!(
        :name => "Name",
        :description => "",
        :symlink => "Symlink"
      ),
      Project.create!(
        :name => "Name",
        :description => "",
        :symlink => "Symlink"
      )
    ])
  end

  it "renders a list of projects" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Symlink".to_s, :count => 2
  end
end
