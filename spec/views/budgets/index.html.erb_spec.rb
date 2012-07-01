require 'spec_helper'

describe "budgets/index.html.erb" do
  before(:each) do
    assign(:budgets, [
      stub_model(Budget,
        :id => 1,
        :user_id => 1,
        :for_id => 1,
        :amount => "9.99"
      ),
      stub_model(Budget,
        :id => 1,
        :user_id => 1,
        :for_id => 1,
        :amount => "9.99"
      )
    ])
  end

  it "renders a list of budgets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
