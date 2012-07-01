require 'spec_helper'

describe "budgets/edit.html.erb" do
  before(:each) do
    @budget = assign(:budget, stub_model(Budget,
      :id => 1,
      :user_id => 1,
      :for_id => 1,
      :amount => "9.99"
    ))
  end

  it "renders the edit budget form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => budgets_path(@budget), :method => "post" do
      assert_select "input#budget_id", :name => "budget[id]"
      assert_select "input#budget_user_id", :name => "budget[user_id]"
      assert_select "input#budget_for_id", :name => "budget[for_id]"
      assert_select "input#budget_amount", :name => "budget[amount]"
    end
  end
end
