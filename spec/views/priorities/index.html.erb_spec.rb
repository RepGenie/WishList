require 'spec_helper'

describe "priorities/index.html.erb" do
  before(:each) do
    assign(:priorities, [
      stub_model(Priority,
        :ID => 1,
        :Level => "Level"
      ),
      stub_model(Priority,
        :ID => 1,
        :Level => "Level"
      )
    ])
  end

  it "renders a list of priorities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Level".to_s, :count => 2
  end
end
