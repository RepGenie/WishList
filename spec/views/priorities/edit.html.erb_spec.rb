require 'spec_helper'

describe "priorities/edit.html.erb" do
  before(:each) do
    @priority = assign(:priority, stub_model(Priority,
      :ID => 1,
      :Level => "MyString"
    ))
  end

  it "renders the edit priority form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => priorities_path(@priority), :method => "post" do
      assert_select "input#priority_ID", :name => "priority[ID]"
      assert_select "input#priority_Level", :name => "priority[Level]"
    end
  end
end
