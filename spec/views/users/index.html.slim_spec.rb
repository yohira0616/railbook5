require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :username => "Username",
        :password_digest => "Password Digest",
        :email => "Email",
        :dm => false,
        :roles => "Roles",
        :reviews_count => 2
      ),
      User.create!(
        :username => "Username",
        :password_digest => "Password Digest",
        :email => "Email",
        :dm => false,
        :roles => "Roles",
        :reviews_count => 2
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Password Digest".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Roles".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
