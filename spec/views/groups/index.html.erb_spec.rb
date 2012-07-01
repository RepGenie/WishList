require 'spec_helper'

describe "groups/index.html.erb" do
  before(:each) do
    assign(:groups, [
      stub_model(Group,
        :id => 1,
        :name => "Name",
        :active => false,
        :referred => "Referred",
        :paying => false,
        :subscription_rate => "9.99",
        :discount_rate => "9.99"
      ),
      stub_model(Group,
        :id => 1,
        :name => "Name",
        :active => false,
        :referred => "Referred",
        :paying => false,
        :subscription_rate => "9.99",
        :discount_rate => "9.99"
      )
    ])
  end

  it "renders a list of groups" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Referred".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
