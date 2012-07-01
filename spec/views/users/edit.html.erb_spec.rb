require 'spec_helper'

describe "users/edit.html.erb" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :id => 1,
      :group_id => 1,
      :name => "MyString",
      :password => "MyString",
      :active => false,
      :admin => false,
      :email => "MyString",
      :primary => false
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path(@user), :method => "post" do
      assert_select "input#user_id", :name => "user[id]"
      assert_select "input#user_group_id", :name => "user[group_id]"
      assert_select "input#user_name", :name => "user[name]"
      assert_select "input#user_password", :name => "user[password]"
      assert_select "input#user_active", :name => "user[active]"
      assert_select "input#user_admin", :name => "user[admin]"
      assert_select "input#user_email", :name => "user[email]"
      assert_select "input#user_primary", :name => "user[primary]"
    end
  end
end
