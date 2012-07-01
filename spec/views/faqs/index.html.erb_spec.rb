require 'spec_helper'

describe "faqs/index.html.erb" do
  before(:each) do
    assign(:faqs, [
      stub_model(Faq,
        :id => 1,
        :question => "Question",
        :answer => "MyText"
      ),
      stub_model(Faq,
        :id => 1,
        :question => "Question",
        :answer => "MyText"
      )
    ])
  end

  it "renders a list of faqs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Question".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
