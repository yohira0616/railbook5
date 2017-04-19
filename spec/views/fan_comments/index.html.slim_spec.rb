require 'rails_helper'

RSpec.describe "fan_comments/index", type: :view do
  before(:each) do
    assign(:fan_comments, [
      FanComment.create!(
        :author_no => 2,
        :name => "Name",
        :body => "MyText",
        :deleted => false
      ),
      FanComment.create!(
        :author_no => 2,
        :name => "Name",
        :body => "MyText",
        :deleted => false
      )
    ])
  end

  it "renders a list of fan_comments" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
