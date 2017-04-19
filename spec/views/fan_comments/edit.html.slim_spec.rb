require 'rails_helper'

RSpec.describe "fan_comments/edit", type: :view do
  before(:each) do
    @fan_comment = assign(:fan_comment, FanComment.create!(
      :author_no => 1,
      :name => "MyString",
      :body => "MyText",
      :deleted => false
    ))
  end

  it "renders the edit fan_comment form" do
    render

    assert_select "form[action=?][method=?]", fan_comment_path(@fan_comment), "post" do

      assert_select "input#fan_comment_author_no[name=?]", "fan_comment[author_no]"

      assert_select "input#fan_comment_name[name=?]", "fan_comment[name]"

      assert_select "textarea#fan_comment_body[name=?]", "fan_comment[body]"

      assert_select "input#fan_comment_deleted[name=?]", "fan_comment[deleted]"
    end
  end
end
