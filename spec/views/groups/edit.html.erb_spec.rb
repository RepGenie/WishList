require 'spec_helper'

describe "groups/edit.html.erb" do
  before(:each) do
    @group = assign(:group, stub_model(Group,
      :id => 1,
      :name => "MyString",
      :active => false,
      :referred => "MyString",
      :paying => false,
      :subscription_rate => "9.99",
      :discount_rate => "9.99"
    ))
  end

  it "renders the edit group form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => groups_path(@group), :method => "post" do
      assert_select "input#group_id", :name => "group[id]"
      assert_select "input#group_name", :name => "group[name]"
      assert_select "input#group_active", :name => "group[active]"
      assert_select "input#group_referred", :name => "group[referred]"
      assert_select "input#group_paying", :name => "group[paying]"
      assert_select "input#group_subscription_rate", :name => "group[subscription_rate]"
      assert_select "input#group_discount_rate", :name => "group[discount_rate]"
    end
  end
end
