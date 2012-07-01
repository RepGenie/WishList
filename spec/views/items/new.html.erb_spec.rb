require 'spec_helper'

describe "items/new.html.erb" do
  before(:each) do
    assign(:item, stub_model(Item,
      :id => 1,
      :requested_by => 1,
      :category_id => 1,
      :priority_id => 1,
      :name => "MyString",
      :creator => "MyString",
      :note => "MyText",
      :active => false,
      :buyer => 1,
      :cost => "9.99",
      :cart => 1,
      :url => "MyText",
      :format_id => 1,
      :nonlist => false
    ).as_new_record)
  end

  it "renders new item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => items_path, :method => "post" do
      assert_select "input#item_id", :name => "item[id]"
      assert_select "input#item_requested_by", :name => "item[requested_by]"
      assert_select "input#item_category_id", :name => "item[category_id]"
      assert_select "input#item_priority_id", :name => "item[priority_id]"
      assert_select "input#item_name", :name => "item[name]"
      assert_select "input#item_creator", :name => "item[creator]"
      assert_select "textarea#item_note", :name => "item[note]"
      assert_select "input#item_active", :name => "item[active]"
      assert_select "input#item_buyer", :name => "item[buyer]"
      assert_select "input#item_cost", :name => "item[cost]"
      assert_select "input#item_cart", :name => "item[cart]"
      assert_select "textarea#item_url", :name => "item[url]"
      assert_select "input#item_format_id", :name => "item[format_id]"
      assert_select "input#item_nonlist", :name => "item[nonlist]"
    end
  end
end
