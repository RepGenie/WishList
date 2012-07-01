require 'spec_helper'

describe "priorities/show.html.erb" do
  before(:each) do
    @priority = assign(:priority, stub_model(Priority,
      :ID => 1,
      :Level => "Level"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Level/)
  end
end
