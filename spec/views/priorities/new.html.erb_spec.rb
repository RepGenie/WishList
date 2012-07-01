require 'spec_helper'

describe "priorities/new.html.erb" do
  before(:each) do
    assign(:priority, stub_model(Priority,
      :ID => 1,
      :Level => "MyString"
    ).as_new_record)
  end

  it "renders new priority form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => priorities_path, :method => "post" do
      assert_select "input#priority_ID", :name => "priority[ID]"
      assert_select "input#priority_Level", :name => "priority[Level]"
    end
  end
end
